# -*- encoding: utf-8 -*-
require File.expand_path("../lib/vagrant-register/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-register"
  s.version     = VagrantRegister::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["chihiro hasegawa"]
  s.email       = ["mail@alicemcas.com"]
  s.homepage    = "http://github.com/owlinux1000/vagrant-register/"
  s.summary     = %q{Get Vagrant box registermation}
  s.description = %q{Allows you to get registermation about your vagrant}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vagrant-register"

#  s.add_dependency "popen4", "~> 0.1.2"
#  s.add_dependency "thor", "> 0.14"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
