require 'dockingstation'

describe DockingStation do 
   docking_station = DockingStation.new
   it { expect(docking_station).to respond_to(:release_bike) }
   it { expect(docking_station.release_bike).to respond_to(:working?) }
end

