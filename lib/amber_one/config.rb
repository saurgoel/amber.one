module AmberOne
  # contains all the configurations
  class Config
    require 'yaml'
    def initialize(environment=nil)
      vars = YAML.load_file("#{File.dirname(__FILE__)}/config.yml")
      @config = vars["default"]
      @config = @config.merge(vars[environment]) if vars[environment].present?
      # @config={}
    end

    private
    # used to set additional variables
    def method_missing(method_name, *arguments, &block)
      method_name = method_name.to_s
      if method_name =~ /=$/
        @config[$`]=arguments.first
      elsif @config.has_key?(method_name)
        @config[method_name.to_s]
      else  
        super
      end
    end

    # used to get variables
    def respond_to_missing?(method_name, include_private = false)
      method_name = method_name.to_s
      method_name =~ /=$/ or @config.has_key? method_name
    end
  end
end