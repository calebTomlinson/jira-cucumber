# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jira_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = "jira-cucumber"
  spec.version       = JiraFormatter::VERSION
  spec.authors       = ["Caleb Tomlinson"]
  spec.email         = ["ctomlinson@opentable.com"]
  spec.description   = %q{Jira reporting for cucumber tests}
  spec.summary       = %q{Jira reporting for cucumber tests}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
  spec.platform      = Gem::Platform::RUBY
  spec.add_runtime_dependency 'cucumber', '1.2.1'
  spec.add_development_dependency 'rspec', '> 2.0'
end
