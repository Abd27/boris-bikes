require "docking_station"

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    it "releases a working bikes" do
      subject.docking(Bike.new)
      expect(subject.release_bike).to be_working
    end
    it 'return an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error 'there are no bikes'
    end
  end
  describe '#docking' do
    it { is_expected.to respond_to :docking }
    it 'docks a bike to the station' do
      bike = Bike.new
      subject.docking(bike)
      expect(subject.station).to include(bike)
    end
    it 'return an error if docking station is full' do
      20.times { subject.docking(Bike.new) }
      expect { subject.docking(Bike.new) }.to raise_error 'station is full'
    end
  end 
end