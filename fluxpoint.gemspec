# fluxpoint.gemspec
Gem::Specification.new do |spec|
    spec.name          = "fluxpoint"
    spec.version       = "0.1.0"
    spec.authors       = %w[J_DDev FluxpointDev]
    spec.email         = [""]
    spec.summary       = "An API library for the fluxpoint api"
    spec.description   = "This is an API library made for the fluxpoint api! https://fluxpoint.dev/api"
    spec.homepage      = "https://github.com/FluxpointDev/fluxpoint-rb"
    spec.license       = "MIT"
    spec.files         = Dir["lib/**/*"]
    spec.require_paths = ["lib"]

    spec.add_dependency "json", '~> 2.6'
  end