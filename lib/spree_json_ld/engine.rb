module Spree::JsonLd
end
module SpreeJsonLd
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_json_ld'

    config.autoload_paths += %W(#{config.root}/lib)
    

    initializer 'spree.json_ld.preferences.environment', before: 'spree.environment' do
      Spree::JsonLd::Config = Spree::JsonLdConfiguration.new
    end


    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate

      if not Spree::JsonLd::Config.get(:url)
        Spree::JsonLd::Config.set(:url, Spree::Config.get(:site_url))
      end

      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
