require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# 👇'rails g'コマンドでコントローラを作成すると、生成したファイルに対応したスタイルシート・ヘルパー・Javascript・アプリケーションをテストするためのファイルが同時に生成されます。今回作成するChatSpaceでは、必要のないファイルですので、設定を変更して生成しないようにしましょう。
# module ChatSpace
#   class Application < Rails::Application
#     # Settings in config/environments/* take precedence over those specified here.
#     # Application configuration should go into files in config/initializers
#     # -- all .rb files in that directory are automatically loaded.
#   end
# end

module ChatSpace
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end