require 'optparse'
require 'json'

module VagrantRegister
  
  module Command
    
    class CommandRegister < Vagrant.plugin("2", :command)

      def self.synopsis
        "register with vagrant-anywhere"
      end
      
      def execute
        
        opts = OptionParser.new do |o|
          o.banner = "Usage: vagrant register"
        end
        
        # Parse the options
        argv = parse_options(opts)
        return if !argv

        @env.ui.info(`pwd`)
        # Success, exit status 0
        0
        
      end
      
    end
    
  end
  
end
