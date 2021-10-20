require 'dockingstation'

describe DockingStation do 
   docking_station = DockingStation.new
   new_bike = docking_station.release_bike
   it { expect(docking_station).to respond_to(:release_bike) }
   it { expect(new_bike).to respond_to(:working?) }
   it { expect(new_bike.working?).to eq true }
   it { expect(docking_station.dock_bike(new_bike)).to eq true}
   it { expect(docking_station.dock_bike("new bike")).to eq false}
end

