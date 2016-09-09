require 'beaker-rspec'
require 'pry'

RSpec.configure do |c|
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  c.formatter = :documentation

  c.before :suite do
    # Install module to all hosts
    hosts.each do |host|

      # Add more setup code as needed
    end
  end
end
