# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "flay-actionpack"
  spec.version       = '0.0.5'
  spec.authors       = ["Eugene Kalenkovich"]
  spec.email         = ["rubify@softover.com"]
  spec.description   = "Flay plugin for Rails ERB templates"
  spec.summary       = "Flay actionpack ERB"
  spec.homepage      = "https://github.com/kalenkov/flay-actionpack"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "flay", ">= 1.2", "< 3"
  spec.add_development_dependency "actionpack", ">= 7"
  spec.add_development_dependency "rake"
end
