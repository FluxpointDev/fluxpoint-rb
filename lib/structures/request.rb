require "net/http"
require "json"

module Fluxpoint
  class Request
    attr_reader :api
    attr_accessor :token

    def initialize(token)
      @api = "https://gallery.fluxpoint.dev"
      @token = token

      if @token.empty?
        raise ArgumentError, "A token needs to be provided."
      elsif !@token.is_a?(String)
        raise ArgumentError, "Token needs to be a string."
      end
    end

    def req(options = {})
      type = options[:type]
      method = options[:method]
      endpoint = options[:endpoint]
      data = options[:data]
      api_types = ["IMG", "API"]
      methods = ["GET", "POST", "PATCH", "DELETE", "PUT"]

      if api_types.include?(type)
        if type == "IMG"
          @api = "https://gallery.fluxpoint.dev"
        elsif type == "API"
          @api = "https://api.fluxpoint.dev"
        else
          @api = "https://gallery.fluxpoint.dev"
        end

        if methods.include?(method)
          uri = URI("#{@api}#{endpoint}")
          fire_at = Net::HTTP.new(uri.host, uri.port)
          fire_at.use_ssl = true
          headers = {
            "Content-Type" => "application/json",
            "Authorization" => @token.to_s
          }
          request_class = case method
                          when "GET"
                            Net::HTTP::Get
                          when "POST"
                            Net::HTTP::Post
                          when "PATCH"
                            Net::HTTP::Patch
                          when "DELETE"
                            Net::HTTP::Delete
                          when "PUT"
                            Net::HTTP::Put
                          end
          request = request_class.new(uri.request_uri, headers)
          request.body = data.to_json if data
          response = fire_at.request(request)
          return response
        end
      end
    end
  end
end
