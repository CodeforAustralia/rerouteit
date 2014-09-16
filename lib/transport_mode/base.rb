module TransportMode
  class Base

    def initialize origin, destination, mode
      @origin = origin
      @destination = destination
      @mode = mode
    end

    def time_in_minutes
      data.drive_time_in_minutes
    end

    private
    def data
      @data ||= GoogleDirections.new(@origin, @destination, :mode => @mode)
    end
  end
end
