module Fluxpoint
  class Test
    def initialize(request)
      @request = request
    end

    def test
      return @request.req(
        type: "API",
        method: "GET",
        endpoint: "/"
      )
    end

    def test_gallery
      return @request.req(
        type: "API",
        method: "GET",
        endpoint: "/test/gallery"
      )
    end

    def test_image(type = "png")
      unless %w[png webp].include?(type)
        raise ArgumentError, "Needs to be png or webp"
      end

      return @request.req(
        type: "API",
        method: "GET",
        endpoint: "/test/image?type=#{type}"
      )
    end

    def test_error
      return @request.req(
        type: "API",
        method: "GET",
        endpoint: "/test/error"
      )
    end
  end
end
