module TransportMode
	class Transit < TransportMode::Base

		def initialize origin, destination
			mode = 'transit'
			super origin, destination, mode
		end
	end
end