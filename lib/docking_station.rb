require_relative "bike"

class DockingStation
  attr_reader :bike
  def release_bike
    fail 'there are no bikes' unless @bike
    @bike
  end

  def docking(bike)
    fail 'station is full' if @bike
    @bike = bike
  end
end