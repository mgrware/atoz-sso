require "atoz_sso/version"
require "atoz_sso/configuration"
require "rails"
module AtozSso
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

require "atoz_sso/base"
require "atoz_sso/auth"
require "atoz_sso/response"
