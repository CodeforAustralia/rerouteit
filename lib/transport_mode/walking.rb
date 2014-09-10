module TransportMode
  class Walking < TransportMode::Base

    def initialize origin, destination
      mode = 'walking'
      super origin, destination, mode
    end
  end
end
