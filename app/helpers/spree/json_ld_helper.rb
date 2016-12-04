module Spree
	module JsonLdHelper
		
		

		def json_ld_path_to_url(path)
			@config = Spree::JsonLd::Config
			@host = @config.get(:url).sub(%r[^http://],'').sub(%r[/$], '')
			
			#TODO: https support
      "http://#{@host.sub(%r[^http://],'')}/#{path.sub(%r[^/],'')}"
    end
    
		def generate_json_ld(product)

			json = {
				'@context' => "http://schema.org/",
  			'@type' => "Product",	
				'name' => product.name,
				'image' => (product.images.empty? ? false : json_ld_path_to_url(product.images.first.attachment.url(:product, false))),
				'description' => product.description,
 				'mpn' => product.sku,

 				'offers' => {
	    		'@type' => "Offer",
	    		'priceCurrency' => product.currency,
	    		'price' => product.price.to_f,
	    		'priceValidUntil' => DateTime.now.strftime("%Y-%m-%d"),
		    		# DamagedCondition
						# NewCondition
						# RefurbishedCondition
						# UsedCondition
	    		'itemCondition' => "http://schema.org/NewCondition",
		    		# Discontinued
						# InStock
						# InStoreOnly
						# LimitedAvailability
						# OnlineOnly
						# OutOfStock
						# PreOrder
						# PreSale
						# SoldOut
	    		'availability' => "http://schema.org/InStock",
		    		# 'seller' => {
		      	#	 '@type' => "Organization",
		      	#	 'name' => "Executive Objects"
		    		# }
				}
 				# "brand" => {
    		# 		"@type": "Thing",
    		# 		"name": ""
  			# },
  			# "aggregateRating": {
  		 	# "@type": "AggregateRating",
    		# "ratingValue": "4.4",
    		#	"reviewCount": "89"
  
  		}
			
			json = modify_json_ld(json)	if defined? 'modify_json_ld'
			
			json
		end
	end
end