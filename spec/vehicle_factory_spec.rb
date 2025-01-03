require 'spec_helper'

RSpec.describe VehicleFactory do
    before(:each) do
        @factory = VehicleFactory.new
        @wa_ev_registrations = DmvDataService.new.wa_ev_registrations
    end

    describe "#create_vehicles" do
        it "creates a new vehicle" do

        expect(@factory.create_vehicles(@wa_ev_registrations)).to be_a([Array])
        expect(@factory.create_vehicles(@wa_ev_registrations)[0]).to be_a(Vehicle)

        expect(factory.create_vehicles(wa_ev_registrations)).to eq(Vehicle.new)    
        end
    end
end