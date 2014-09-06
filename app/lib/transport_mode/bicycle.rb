module TransportMode
	class Bicycle < TransportMode::Base
  
  	def cost
    	0
  	end

  	def emissions
    	0
  	end

  	def get_bicycle_directions
  		GoogleDirections.new(@origin, @destination)
  	end
  end
end
