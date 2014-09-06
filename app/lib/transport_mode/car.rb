class Car < TransportMode
  def cost
    fuel + vehicle_costs
  end

  def emissions
    0.255
  end

  private
  def fuel
    0.17
  end

  def vehicle_costs
    0.49
  end
end
