module Emission
  #Emissions should be retured per passenger meter

  def self.value(symbol)
    case symbol
      when :bicycle
        0
      when :driving
        (0.255 / 1000).to_f
      when :transit
        (0.115 / 1000).to_f
      when :walking
        0
      else
        0
    end
  end
end
