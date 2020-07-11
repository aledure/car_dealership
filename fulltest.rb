class Vehicle
    attr_accessor :year, :make, :model, :purchase_year
    def vehicle_specs
        "You have a #{year} #{make} #{model}."
    end
#    def warranty_status
#        if purchase_year >= "2020" && <= "2010"
#            "Your vehicle is still under warranty."
#        else
#            "Your vehicle is no longer covered under warranty."
#        end
#    end
end
vehicle = Vehicle.new
puts "Hi, I'm the Car Dealership Bot, what is your name?"
name = gets.chomp
puts "Hello, #{name}! What can I do for you today? Have you purchased a car from us before? \nYes\nNo"
selection = gets.chomp
if selection == "Yes"
    puts "Please enter the year, make, and model of your vehicle."
    vehicle.year = gets.chomp 
    vehicle.make = gets.chomp 
    vehicle.model = gets.chomp
    puts "#{vehicle.vehicle_specs}\nIs this correct?\nYes\nNo"
end
        if selection == "Yes"
            puts "In what year did you purchase your vehicle?"
            vehicle.purchase_year = gets.chomp
        elsif selection == "No"
            puts "Are you interested in a trade in estimate?\nYes\nNo"
else
    puts "Ok bye."
end