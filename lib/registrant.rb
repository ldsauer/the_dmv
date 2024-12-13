class Registrant
    attr_reader :name, 
                :age, 
                :permit, 
                :license_data

    def initialize (name = "name", age = 0, permit = false)
        @name = name
        @age = age
        @permit = permit
    end

    def permit?
        @permit
    end

    def license_data
        @license_data = {
            written: false,
            license: false, 
            renewed: false
        }
    end

    def earn_permit
        @permit = true
    end

end