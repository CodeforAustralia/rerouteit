module TransportMode
  class Base

    def initialize origin, destination, mode
      @origin = origin
      @destination = destination
      @mode = mode
    end

    def get_directions
      GoogleDirections.new(@origin, @destination, :mode => @mode).xml
    end
  end
end
