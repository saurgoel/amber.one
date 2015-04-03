module AmberOne
  # contains all the configurations
  class Config
    require 'yaml'
    def initialize
      @config={}
      vars = YAML.load_file("#{File.dirname(__FILE__)}/config.yml")
      self.redis_host =  vars["redis_host"]
      self.redis_port = vars["redis_port"]
      self.elasticsearch_host = vars["elasticsearch_host"]
      self.elasticsearch_port = vars["elasticsearch_port"]
      self.memcached_host = vars["memcached_host"]
      self.memcached_port = vars["memcached_port"]
      self.session_domain = vars["session_domain"]
      self.dev_session_domain = vars["dev_session_domain"]
      self.email_domain = vars["email_domain"]
      self.client_service_url = vars["client_service_url"]
      self.notify_service_url = vars["notify_service_url"]
      self.content_service_url = vars["content_service_url"]
      self.customer_service_url = vars["customer_service_url"]
      self.frontend_service_url = vars["frontend_service_url"]
      self.product_service_url = vars["product_service_url"]
      self.image_service_url = vars["image_service_url"]
      require_relative 'config_vars.rb'
    end

    private
    # used to set additional variables
    def method_missing(method_name, *arguments, &block)
      if method_name.to_s =~ /=$/
        @config[$`.to_sym]=arguments.first
      elsif @config.has_key?(method_name)
        @config[method_name]
      else  
        super
      end
    end

    # used to get variables
    def respond_to_missing?(method_name, include_private = false)
      method_name.to_s =~ /=$/ or @config.has_key? method_name
    end
  end
end