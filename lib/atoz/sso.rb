require "atoz/sso/version"
require "atoz/sso/configuration"
module Atoz
  module Sso
    class << self
    attr_accessor :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.reset
      @configuration = Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end

require "atoz/sso/base"
require "atoz/sso/auth"
require "atoz/sso/response"
