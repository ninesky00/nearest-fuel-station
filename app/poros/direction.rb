class Direction
  attr_reader :distance, :travel_time, :directions
  def initialize(data)
    @distance = data[:distance]
    @travel_time = (data[:formattedTime])
    @directions = data[:legs].first[:maneuvers].first[:narrative]
  end
end