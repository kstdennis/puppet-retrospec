# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retrospec/plugins/v1/plugin/version'

Gem::Specification.new do |s|
  s.name = "puppet-retrospec"
  s.version = Retrospec::Puppet::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Corey Osman"]
  s.date = "2016-07-28"
  s.description = "Retrofits and generates valid puppet rspec test code to existing modules"
  s.email = "corey@nwops.io"
  s.extra_rdoc_files = [
    "CHANGELOG.md",
    "LICENSE",
    "README.md"
  ]
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(coverage)/}) }
  s.homepage = "http://github.com/nwops/puppet-retrospec"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Generates puppet rspec test code based on the classes and defines inside the manifests directory. Aims to reduce some of the boilerplate coding with default test patterns."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
      s.add_runtime_dependency(%q<retrospec>, ["~> 0.4"])
      s.add_runtime_dependency(%q<awesome_print>, [">= 0"])
      s.add_runtime_dependency(%q<facets>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<trollop>, [">= 0"])
      s.add_dependency(%q<retrospec>, ["~> 0.4"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<facets>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 0"])
    s.add_dependency(%q<retrospec>, ["~> 0.4"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<facets>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
