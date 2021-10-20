require_relative 'bike'

class DockingStation
    def release_bike
      Bike.new
    end

    def dock_bike(mybike)
        @bike = mybike
    end

    def see_bike
        @bike
    end

    attr_reader :see_bike
end