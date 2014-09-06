module TransportMode
	class Bicycling < TransportMode::Base

		def get_directions
			@mode = 'bicycling'
			get_api
		end
	end
end