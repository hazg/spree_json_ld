Spree Json Ld
=============

Add JSON LD to spree 1.3

Installing
==========

gem 'spree_json_ld', github: 'hazg/spree_json_ld'

Customize fields
================
You can add custom fields to json ld by adding helpers/spree/json_ld_helper_decorator.rb

``` ruby
module Spree
	module JsonLdHelper
		def modify_json_ld(json)
	
			json.merge(
				{
					'description' => 'You custon description',
					'brand' => {
  					'@type' => 'Thing',
  			 		'name' => "You brand"
  			 	},
  			 	'seller' => {
    				'@type' => "Organization",
    				'name' => "Your organization"
  				}

				}
			)

		end
	end
end
```


Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2016 Aleksandr Aleksandrov, released under the New BSD License
