require_relative "bike"

class DockingStation
  attr_reader :station
  def initialize
    @station = []
  end  
  def release_bike
    fail 'there are no bikes' if station.empty?
    station.pop
  end
  def docking(bike)
    fail 'station is full' if @station.length >= 20
    @station << bike
    bike
  end
end