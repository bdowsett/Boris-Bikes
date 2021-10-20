require 'dockingstation'

describe DockingStation do 
   docking_station = DockingStation.new
   new_bike = Bike.new
   

   it "matches the error message" do
    expect { subject.release_bike }.to raise_error("There are no bikes")
   end 
  
   it { expect(docking_station).to respond_to(:release_bike) }
   it { expect(new_bike).to respond_to(:working?) }
   it { expect(new_bike.working?).to eq true }

   it { is_expected.to respond_to(:dock_bike).with(1).argument}

   it "docks something" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike

   end

 #  it { expect(docking_station.dock_bike(new_bike)).to eq 1}
 #  it { expect(docking_station.dock_bike("new bike")).to eq 0}
 #  it { expect(docking_station.see_bikes[0].class).to eq Bike}

=begin
 condition = subject.see_bike
 context "equals nil", if: condition.nil? do 
    it "return error" do 
    end 
    context "does not equal nil", if: !condition.nil? do 
       it "does not return error" do 
       end  
 end 
=end 
end 

