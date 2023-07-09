module Fluxpoint
    class Image
      def initialize(request)
        @request = request
      end
  
      def generate_template(template)
        return @request.req(
          type: "API",
          method: "GET",
          endpoint: "/geb/#{template}"
        )
      end
  
      def generate()
        return @request.req(
          type: "API",
          method: "GET",
          endpoint: "/gen/html"
        )
      end
  
      def generate_custom()
        return @request.req(
          type: "API",
          method: "GET",
          endpoint: "/gen/custom"
        )
      end
  
      def generate_welcome(options = {})
        return @request.req(
          type: "API",
          method: "POST",
          endpoint: "/gen/welcome",
          data: {
            "username" => options[:username],
            "avatar" => options[:avatar],
            "background" => options[:background],
            "members" => options[:members],
            "icon" => options[:icon],
            "banner" => options[:banner],
            "color_welcome" => options[:color_welcome],
            "color_username" => options[:color_username],
            "color_members" => options[:color_members]
          }
        )
      end
    end
  end
  