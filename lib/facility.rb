class Facility
  attr_reader :name, 
              :address, 
              :phone, 
              :services, 
              :registered_vehicles,
              :collected_fees

  def initialize(facility)
    @name = facility[:name]
    @address = facility[:address]
    @phone = facility[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  def add_service(service)
    @services << service
  end

  def register_vehicle(vehicle)
    if @services.include?('Vehicle Registration')
      @registered_vehicles << vehicle
      vehicle.registration_date = Date.today
      determine_plate_type_and_fees(vehicle)
   else 
      return nil
   end
  end

  def administer_written_test(registrant)
    if @permit == true && @age >= 16
      # administer test
    else
      false
    end

    def administer_road_test(registrant)
      if administer_written_test == true
        #administer road test
      else
        false
      end
    end
    
  end
# Helper methods

  def determine_plate_type_and_fees(vehicle)
    if vehicle.antique?
      vehicle.plate_type = :antique
      @collected_fees += 25
    elsif vehicle.electric_vehicle?
      vehicle.plate_type = :ev
      @collected_fees += 200
    else
      vehicle.plate_type = :regular
      @collected_fees += 100
    end 
  end
end
