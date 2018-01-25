require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes, :capacity

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
    true if @bikes.size >= @capacity
  end

end
