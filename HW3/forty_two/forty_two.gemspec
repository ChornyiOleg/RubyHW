# frozen_string_literal: true

require_relative "lib/forty_two/version"

Gem::Specification.new do |spec|
  spec.name = "forty_two"
  spec.version = FortyTwo::VERSION
  spec.authors = ["ChornyiOleg"]
  spec.email = ["olegchornyi82@gmail.com"]
  spec.summary = "Return true if integer equals 42"
  spec.description = "Extended class Integer with 42 gem"
  spec.homepage = "https://github.com/ChornyiOleg/RubyHW/tree/master/HW3/forty_two"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"
  spec.files = ["lib/forty_two.rb"]
end
