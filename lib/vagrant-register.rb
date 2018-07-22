# -*- encoding: utf-8 -*-
# vim: set fileencoding=utf-8

require "vagrant"

module VagrantRegister
  class Plugin < Vagrant.plugin("2")
    name "vagrant-register"
    description <<-DESC
    Sahara
    DESC

    command("register") do
      require File.expand_path("../vagrant-register/command/register", __FILE__)
      Command::CommandRegister
    end
  end
end
