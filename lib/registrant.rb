class Registrant
    attr_reader :name, 
                :age, 
                :permit, 
                :license_data

    def initialize (name, age, permit = false)
        @name = name
        @age = age
        @permit = permit
        @license_data = {
            written: false,
            license: false, 
            renewed: false
        }
    end

    def permit?
        @permit
    end

    def earn_permit
        @permit = true
    end

    def take_writen_test
        @take_writen_test = true
    end

    def administer_road_test
        @administer_road_test = true
    end

    def renew_drivers_license
        @renew_drivers_license = true
    end

end