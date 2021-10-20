require 'dockingstation'

describe DockingStation do 
   docking_station = DockingStation.new
   new_bike = docking_station.release_bike
   it { expect(docking_station).to respond_to(:release_bike) }
   it { expect(new_bike).to respond_to(:working?) }
   it { expect(new_bike.working?).to eq true }

   it { is_expected.to respond_to(:dock_bike).with(1).argument}

   it "docks something" do
      bike = subject.release_bike
      expect(subject.dock_bike(bike)).to eq bike
   end

 #  it { expect(docking_station.dock_bike(new_bike)).to eq 1}
 #  it { expect(docking_station.dock_bike("new bike")).to eq 0}
 #  it { expect(docking_station.see_bikes[0].class).to eq Bike}
end

