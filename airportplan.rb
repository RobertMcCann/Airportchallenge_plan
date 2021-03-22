### I wanted to try the airport challenge again, but with using instance variables for the first time.
### I ran out of time (again) and decided to try and plan out how I wanted my code to look, so that is why there's no rspec tests
class Airport
    attr_reader :plane

    def initialize
        @airport_capacity = Airport_capacity.new
        @weather = Weather.new
        @plane = Plane.new
    end

    def land_plane
        capacity_full = @airport_capacity.prevent_landing
        severe_storm = @weather.storm
        if capacity_full == false and severe_storm == false
            #I wanted to append these instances of plane to a list and then create a new plane instance
            return "#{@plane} has landed safely! "
        elsif capacity_full == true
            return "#{@plane} could not land due to capacity issues!"
        elsif severe_storm == true
            return "#{@plane} could not land due to severe storms!"
        end
    end

    def take_off
        severe_storm = @weather.storm
        if severe_storm == true
            return "#{@plane} could not take off due to severe storms!"
        else
            return "#{@plane} has taken off safely!"
            #I wanted to append these instances of plane to a list
        end
    end
end

class Airport_capacity
    attr_accessor :capacity
    def initialize
        @capacity = 4
    end
    def prevent_landing
        return false unless @capacity > 5
        return true
    end
end

class Weather
    attr_reader :weather
    def storm
        severe_storm = rand(8)
        if severe_storm >= 4
            @weather == true
            return true
        end
        return false
    end

end

class Plane
end
