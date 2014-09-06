module TransportMode
	class Driving < TransportMode::Base

		def get_directions
			@mode = 'driving'
			get_api
		end
	end
end