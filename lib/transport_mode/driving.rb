module TransportMode
  class Driving < TransportMode::Base

    def initialize origin, destination
      mode = 'driving'
      super origin, destination, mode
    end
  end
end
