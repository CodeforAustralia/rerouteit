module TransportMode
  class Bicycling < TransportMode::Base

    def initialize origin, destination
      mode = 'bicycling'
      super origin, destination, mode
    end
  end
end
