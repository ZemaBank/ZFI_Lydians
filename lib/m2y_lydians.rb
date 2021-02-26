# frozen_string_literal: true

require 'm2y_lydians/configuration/configuration'
require 'm2y_lydians/modules/base'

module M2yLydians
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
