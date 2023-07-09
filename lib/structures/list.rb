module Fluxpoint
    class List
        def initialize(request) 
            @request = request
        end

        def get_templates()
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/list/templates"
            )
        end

        def get_banners()
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/list/banners"
            )
        end

        def get_icons()
            return @request.req(
                type: "API",
                method: "GET",
                endpoint: "/list/icons"
            )
        end
    end
end