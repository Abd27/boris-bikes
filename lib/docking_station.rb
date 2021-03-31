require_relative "bike"

class DockingStation
  attr_reader :bike
  def release_bike
    Bike.new
  end

  def docking(bike)
    @bike = bike
  end
end