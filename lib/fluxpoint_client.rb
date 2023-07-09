require_relative "./structures/request"
require_relative "./structures/test"
require_relative "./structures/misc"
require_relative "./structures/color"
require_relative "./structures/convert"
require_relative "./structures/list"
require_relative "./structures/image"

module Fluxpoint
  class FluxpointClient
    attr_reader :request, :test, :misc, :color, :convert, :list, :images, :minecraft, :sfw, :animal, :nsfw

    def initialize(token)
      @token = token
      @request = Request.new(@token)
      @test = Test.new(@request)
      @misc = Misc.new(@request)
      @color = Color.new(@request)
      @convert = Convert.new(@request)
      @list = List.new(@request)
      @images = Image.new(@request)
    end
  end
end
