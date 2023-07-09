module Fluxpoint
    class Misc
      def initialize(request)
        @request = request
      end
  
      def get_dad_joke()
        return @request.req(
          type: "API",
          method: "GET",
          endpoint: "/dadjoke"
        )
      end
  
      def get_me()
        return @request.req(
          type: "API",
          method: "GET",
          endpoint: "/me"
        )
      end
    end
  end
  