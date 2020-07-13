class Vehicle
    attr_accessor :year, :make, :model, :purchase_year, :warranty_status
    def initialize(year, make, model)
        @year = year
        @make = make.capitalize
        @model = model.capitalize
        @purchase_year = purchase_year
        @warranty_status = warranty_status
    end
    def to_s
        "\tYou drive a #{@year} #{@make} #{@model}, is that correct?\n\n"
    end
    def warranty_status  
        if purchase_year.to_i >= 2010
            warranty_status = true
        else
            warranty_status = false
        end
    end
    def trade_in
    end
    def loan_status
    end
end
#Bill class creates a total for services rendered
#class Bill
#    def initialize
#        @items = []
#        @total == @items.length * 5
#    end
#end


#Establishing info for Vehicle class
puts "\tHello, I'm the Car Dealership Bot. Let's get started, first tell me some info about your car.\n\n\tIn what year was your vehicle manufactured?\n\n"
year = gets.chomp
puts "\tThank you! Now, what is the make of your vehicle?\n\n"
make = gets.chomp
puts "\tAlmost done! What is the model of your vehicle?\n\n"
model = gets.chomp
vehicle = Vehicle.new(year, make, model)
#Approval of car type
puts vehicle
selection = gets.chomp
case selection
    when "yes", "Yes", "yeah", "Yeah", "y", "Y"
        puts "\tGreat, now then, what can I do for you today? Please select a number from the list below.\n\t1. Check warranty status.\n\t2. Schedule maintenance.\n\t3. Check loan balance.\n\t4. See trade in value.\n\n"
            answer = gets.chomp
            case answer
#Warranty status
            when "1"
                if warranty_status = true
                    puts "\tYour vehicle is still under warranty.\n\n"
                else
                    puts "\tYour vehicle is no longer under warranty.\n\n"
                end
#Maintenance
            when "2"
                puts "\tWhich service(s) are you interested in?\n\n\t1. Oil Change \n\t2. Tire Alignment \n\t3. Replace Air Filter \n\t4. Replace Headlights \n\t5. Fill Transmission Fluid\n\n"


#Loan balance
            when "3"
                puts "sjkdvhsVE"
#trade in value
            when "4"
                puts "javdhfv"
            else
                puts "You're not too big on following directions, are you?"
            end
    else
        puts ">:(\n"
    end