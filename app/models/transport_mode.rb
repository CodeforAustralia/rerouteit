class TransportMode < ActiveRecord::Base
  validates :code, :name, :kg_co2_per_km, presence: true
  validates :code, uniqueness: true

  def kg_co2_per_m
    kg_co2_per_km / 1000
  end

  def google_mode_name
    case code
    when "bicycle"
      "bicycling"
    when "car", "electric_car"
      "driving"
    when "train", "bus", "ferry", "light_rail"
      "transit"
    when "walk"
      "walking"
    end
  end
end
