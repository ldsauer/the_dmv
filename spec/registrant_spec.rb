require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do 
    before(:each) do
        @registrant = Registrant.new('Logan', 33)

    end

    describe '#initalize' do
        it 'can initialize' do
            expect(@registrant).to be_an_instance_of(Registrant)
        end
    end

   describe '#registrant info' do
        it "has a name" do
        
            registrant_1 = Registrant.new('Bruce', 18, true )
            registrant_2 = Registrant.new('Penny', 15, )
    
            expect(registrant_1.name).to eq("Bruce")
            expect(registrant_2.name).to eq("Penny")
        end

        it "has an age" do 
        
            registrant_1 = Registrant.new('Bruce', 18, true )
            registrant_2 = Registrant.new('Penny', 15, )

            expect(registrant_1.age).to eq(18)
            expect(registrant_2.age).to eq(15)
        end

        it "has a permit?" do
        
            registrant_1 = Registrant.new('Bruce', 18, true )
            registrant_2 = Registrant.new('Penny', 15, )
        
            expect(registrant_1.permit?).to eq(true)
            expect(registrant_2.permit?).to eq(false)
        end

        it "definies license data" do
        
            registrant_1 = Registrant.new('Bruce', 18, true )
            registrant_2 = Registrant.new('Penny', 15, )
        
            expect(registrant_1.license_data).to eq({:written=>false, :license=>false, :renewed=>false})
            expect(registrant_2.license_data).to eq(:written=>false, :license=>false, :renewed=>false)
        end

    end

    describe "#earned permit" do
        it "registrant 2 earned their permit" do
        
            registrant_2 = Registrant.new('Penny', 15)
            
            expect(registrant_2.permit?).to eq(false)
            
            registrant_2.earn_permit
            
            expect(registrant_2.permit?).to eq(true)
        end

        
    end

end
