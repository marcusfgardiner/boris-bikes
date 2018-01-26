require "docking_station"

describe DockingStation do

  let(:bike) {Bike.new}

  it { is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument}

  it "should raise an error because there's no bike" do
    expect{subject.release_bike}.to raise_error("No bikes at the station")
  end

  it "should raise an error when dock is full with DEFAULT_CAPACITY bikes" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(:bike)}
    expect{subject.dock(:bike)}.to raise_error("Docking station is full")
  end

  it { is_expected.not_to respond_to(:full?)}

  it { is_expected.not_to respond_to(:empty?)}

  context "Checking capacity argument works on DockingStation creation" do
    it "should accept a capacity argument and use it" do
      system_maintainers_capacity = (50)
      docking_station = DockingStation.new(system_maintainers_capacity)
      expect(docking_station.capacity).to eq(system_maintainers_capacity)
    end

    it "should raise an error when dock is full with system maintainers capacity bikes" do
      system_maintainers_capacity = 50
      docking_station = DockingStation.new(system_maintainers_capacity)
      system_maintainers_capacity.times {docking_station.dock(Bike.new)}
      expect{docking_station.dock(Bike.new)}.to raise_error("Docking station is full")
    end

    it "should have a default capacity when no argument is provided" do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

  end

end

#Release bike no longer creates new bike
  # it "checks the bike is working" do
  # expect(subject.release_bike).to be_working
  # end


#Release bike no longer creates new bike
  # it "should create a new bike when release_bike method is called" do
  #   expect(subject.release_bike).to be_instance_of(Bike)
  # end

#Release bike no longer creates new bike
  # it "should dock the bike we are giving it" do
  #   bike = subject.release_bike
  #   expect(subject.dock(bike)).to eq(bike)
  # end

#Full? method is now private
  # it "checks if dock is full" do
  #   20.times {subject.dock(Bike.new)}
  #   expect(subject).to be_full
  # end

#Empty? method is now private
  # it "checks if the dock is empty" do
  #   expect(subject).to be_empty
  # end
