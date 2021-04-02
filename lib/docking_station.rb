require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :station, :capacity
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @station = []
    @capacity = capacity
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
    @station.length >= DEFAULT_CAPACITY
  end 
  def empty?
    @station.empty?
  end   
end