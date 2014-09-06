module TransportMode
	class Walking < TransportMode::Base

		def get_directions
			@mode = 'walking'
			get_api
		end
	end
end