require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    raise "No bikes at the station" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station is full" if full?
    @bikes << bike
  end

private
  def empty?
    @bikes.empty?
  end

  def full?
    true if @bikes.size >= DEFAULT_CAPACITY
  end

end
