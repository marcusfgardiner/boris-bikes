require_relative 'bike'

class DockingStation

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

# private
  def empty?
    true if @bikes.size == 0
  end

  def full?
    true if @bikes.size >= 20
  end

end
