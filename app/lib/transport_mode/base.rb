require 'google_directions' 

module TransportMode
	class Base
		
		def initialize origin, destination
			@origin = origin
			@destination = destination
		end
			
	end
end