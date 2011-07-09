# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib/", __FILE__)
$:.unshift lib unless $:.include?(lib)

require "vidibus/secure/version"

Gem::Specification.new do |s|
  s.name        = "vidibus-secure"
  s.version     = Vidibus::Secure::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Andre Pankratz"
  s.email       = "andre@vidibus.com"
  s.homepage    = "https://github.com/vidibus/vidibus-secure"
  s.summary     = "Security tools for Vidibus applications"
  s.description = "Allows encryption and signing of requests and storing encrypted data within Mongoid documents."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vidibus-resource"

  s.add_dependency "rack", "~> 1.2.1"
  s.add_dependency "mongoid", "~> 2"
  s.add_dependency "activesupport", "~> 3"
  s.add_dependency "json"
  s.add_dependency "vidibus-core_extensions"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rake"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "rspec", "~> 2"
  s.add_development_dependency "rr"
  s.add_development_dependency "rcov"
  s.add_development_dependency "actionpack", "~> 3"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
