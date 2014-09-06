module TransportMode
	class Transit < TransportMode::Base

		def get_directions
			@mode = 'transit'
			get_api
		end
	end
end