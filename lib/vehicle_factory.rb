require 'spec_helper'








class VehicleFactory
    def create_vehicles(vehicle_data)
        vehicle_data.map do |data|
          Vehicle.new = {
            :vin => :vin, 
            :year => :year, 
            :make => :make,
            :model => :model, 
            :engine => :ev
          }
        end
    end








end



