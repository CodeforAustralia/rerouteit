class TripService
  attr_reader :origin, :destination, :transport_mode

  def initialize(origin, destination, transport_mode)
    @origin = origin
    @destination = destination
    @transport_mode = transport_mode
  end

  def emissions
    transport_mode.kg_co2_per_m * distance_in_metres
  end

  def cost
    raise NotImplementedError.new("Not implemented yet")
  end

  def calories
    raise NotImplementedError.new("Not implemented yet")
  end

  def time_in_minutes
    directions.drive_time_in_minutes
  end

  def distance_in_metres
    directions.distance.to_d
  end

  def results?
    directions.status == "OK"
  end

  private

  def directions
    @directions ||= GoogleDirections.new(origin, destination, mode: transport_mode.google_mode_name, departure_time: Time.now.to_i)
  end
end
