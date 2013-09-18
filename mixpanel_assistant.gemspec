# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mixpanel_assistant/version'

Gem::Specification.new do |spec|
  spec.name          = "mixpanel_assistant"
  spec.version       = MixpanelAssistant::VERSION
  spec.authors       = ["patbenatar"]
  spec.email         = ["nick@gophilosophie.com"]
  spec.description   = "Use Mixpanel's JavaScript library from your backend with ease"
  spec.summary       = "As the JavaScript library is Mixpanel's preferred method of usage, MixpanelAssistant aims to make it easier to work with from your Rails backend. Most notably it persists tracking data across redirects, perfect for handling events like user sign ups or form submissions."
  spec.homepage      = "https://github.com/patbenatar/mixpanel_assistant"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
