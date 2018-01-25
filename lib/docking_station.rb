require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
      raise "No bikes at the station" if @bikes.size == 0
      @bikes.pop
  end


  def dock(bike)
    raise "Docking station is full" if @bikes.size >= 20
    @bikes << bike
  end

end
