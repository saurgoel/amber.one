require "amber_one/version.rb"
require "amber_one/config.rb"
require "amber_one/helpers.rb"
if defined?(Rails)
  require 'amber_one/assets.rb'
  require 'amber_one/railtie.rb' 
end
