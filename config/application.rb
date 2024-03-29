require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
ActiveSupport::Deprecation.behavior = :silence
Bundler.require(*Rails.groups)

module DataB
  class Application < Rails::Application
    config.active_record.migration_error = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
