module Fluxpoint
    class Color
        def initialize(request)
            @request = request
        end

        def random()
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/color/random"
            )
        end

        def get_hex(hex)
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/color/info?hex=#{hex}"
            )
        end

        def get_name(name) 
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/color/info?name=#{name}"
            )
        end
    end
end