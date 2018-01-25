require "docking_station"

describe DockingStation do

  it { is_expected.to respond_to(:release_bike)}

  it { is_expected.to respond_to(:dock).with(1).argument}

  it "should raise an error because there's no bike" do
    expect{subject.release_bike}.to raise_error("No bikes at the station")
  end

  it "should raise an error when dock is full with 20 bikes" do
    20.times {subject.dock(Bike.new)}
    expect{subject.dock(Bike.new)}.to raise_error("Docking station is full")
  end

  it { is_expected.not_to respond_to(:full?)}



  it { is_expected.not_to respond_to(:empty?)}



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
