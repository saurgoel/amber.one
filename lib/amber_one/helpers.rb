module AmberOne
  module Helpers
    # path of files in the gem
    def self.gem_path
      File.expand_path '..', File.dirname(__FILE__)
    end

    def self.stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def self.fonts_path
      File.join assets_path, 'fonts'
    end

    def self.javascripts_path
      File.join assets_path, 'javascripts'
    end

    def self.assets_path
      File.join gem_path, 'app/assets'
    end

    # def config_path
    #   File.join gem_path, 'config/'
    # end
  end
end