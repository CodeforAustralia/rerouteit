module TransportMode
	class Base

		def initialize origin, destination
			@origin = origin
			@destination = destination
		end

		def get_api
			GoogleDirections.new(@origin, @destination, :mode => @mode)
		end
	end
end