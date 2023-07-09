require_relative "./structures/request"
require_relative "./structures/test"
require_relative "./structures/misc"

module Fluxpoint
  class FluxpointClient
    attr_reader :request, :test, :misc, :color, :convert, :list, :images, :minecraft, :sfw, :animal, :nsfw

    def initialize(token)
      @token = token
      @request = Request.new(@token)
      @test = Test.new(@request)
      @misc = Misc.new(@request)
    end
  end
end
