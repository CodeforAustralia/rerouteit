module TransportMode
  class Base

    attr_accessor :mode

    def initialize origin, destination, mode
      @origin = origin
      @destination = destination
      @mode = mode
    end

    def time_in_minutes
      data.drive_time_in_minutes
    end

    def emissions
      Emission.value(mode) * data.distance.to_f
    end

    private
    def data
      @data ||= GoogleDirections.new(@origin, @destination, mode: @mode, departure_time: Time.now.to_i)
    end
  end
end
