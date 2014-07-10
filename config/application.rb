require File.expand_path('../boot', __FILE__)

require "rails"

Bundler.require(*Rails.groups)

module Sample
  class Application < Rails::Application
  end
end
