require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Watchlist
  class Application < Rails::Application
    # Force new test files to be generated in the minitest-spec style
    config.generators do |g|
      g.test_framework :minitest, spec: true
    end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.paths << Rails.root.join("vendor","assets","bower_components")
    config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")

    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)
  end
end
