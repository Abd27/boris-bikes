require_relative "bike"

class DockingStation
  attr_reader :station
  def initialize
    @station = []
  end  
  def release_bike
    fail 'there are no bikes' if empty?
    station.pop
  end
  def docking(bike)
    fail 'station is full' if full?
    @station << bike
  end
  private
  def full?
    @station.length >= 20
  end 
  def empty?
    @station.empty?
  end   
end