module Fluxpoint
    class Convert
        def initialize(request)
            @request = request
        end

        def html_to_markdown(html)
            return @request.req(
                type: "API",
                method: "POST",
                endpoint: "/convert/html-markdown",
                data: { "html" => html }
            )
        end

        def markdown_to_html(markdown) 
            return @request.req(
                type: "API",
                method: "POST",
                endpoint: "/convert/markdown-html",
                data: { "markdown" => markdown }
            )
        end
    end
end