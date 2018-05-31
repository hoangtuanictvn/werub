
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "werub/version"

Gem::Specification.new do |spec|
  spec.name          = "werub"
  spec.version       = Werub::VERSION
  spec.authors       = ["Hoang Tuan"]
  spec.email         = ["hoangtuanictvn@gmail.com"]

  spec.summary       = "A minimal ruby web framework."
  spec.description   = "Ruby web framework for blog or personal website."
  spec.homepage      = "http://github.com/hoangtuanictvn/werub"
  spec.license       = "MIT"

 #if spec.respond_to?(:metadata)
  #  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against " \
  #    "public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
