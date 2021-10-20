require_relative 'bike'

class DockingStation
    def release_bike
      Bike.new
    end 
    def dock_bike(mybike)
        mybike.class == Bike ? true : false
    end 
end