
namespace :my_namespace do
  
  desc "EVE API calls"
  task download_data: :environment do
  	
  	EVEOnlineAPIClient.configure(endpoint_url: 'https://api.eveonline.com', logger: Logger.new(STDOUT))
	result = EVEOnlineAPIClient.jumps
	@raw_data = result[:solar_systems]

	@date = result[:data_time]
	@next_call = result[:cached_until]
	
	@raw_data.each do |array|
		@datum = Datum.new
		@datum.solar_name = array[:solar_system_id]	
		@datum.ship_jumps = array[:ship_jumps]
		@datum.date = @date
		@datum.save
	end
  end
end




