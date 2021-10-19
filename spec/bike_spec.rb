require 'bike'

describe Bike do 
    new_bike = Bike.new
   it { expect(new_bike).to respond_to(:working?) }
end