require 'rubygems'

if File.join(File.dirname(__FILE__), "bin", "common.rb")
  require File.join(File.dirname(__FILE__), "bin", "common")
end

require 'merb-core'

Merb.start(:merb_root   => File.expand_path(File.dirname(__FILE__)),
           :environment => ENV['RACK_ENV'])


if prefix = ::Merb::Config[:path_prefix]
  use Merb::Rack::PathPrefix, prefix
end

use Merb::Rack::Static, Merb.dir_for(:public)

run Merb::Rack::Application.new