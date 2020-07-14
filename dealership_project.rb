class Vehicle
    attr_accessor :year, :make, :model, :purchase_year, :warranty_status, :mileage
    def initialize(year, make, model)
        @year = year
        @make = make.capitalize
        @model = model.capitalize
        @purchase_year = purchase_year
        @warranty_status = warranty_status
        @mileage = mileage
    end
    def to_s
        "\tYou drive a #{@year} #{@make} #{@model}, is that correct?\n\n"
    end
    def greeting
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
    end
    def warranty_status  
        if purchase_year.to_i >= 2010
            warranty_status = true
        else
            warranty_status = false
        end
    end
    def trade_in
        if mileage.to_i >= 50000
            puts "We can offer up to 12,000 for your vehicle."
        else

    end
end

#Bill class creates a total for services rendered
class Bill
    def initialize
        @items = []
        @total = @items.length * 5
        @service = service
    end
    def maintenance
        puts "\tWhich service(s) are you interested in?\n\n\t1. Oil Change \n\t2. Tire Alignment \n\t3. Replace Air Filter \n\t4. Replace Headlights \n\t5. Fill Transmission Fluid\n\n"
        service = gets.chomp
        while service >= 1 && service <= 5
            puts @items
    end
end



    puts greeting
    puts "\tGreat, now then, what can I do for you today? Please select a number from the list below.\n\t1. Check warranty status.\n\t2. Schedule maintenance.\n\t3. Check loan balance.\n\t4. See trade in value.\n\n"
    answer = gets.chomp
    when "yes", "Yes", "yeah", "Yeah", "y", "Y"
case = answer
case selection


#Warranty status
            when "1"
                if warranty_status == true
                    puts "\tYour vehicle is still under warranty.\n\n"
                else
                    puts "\tYour vehicle is no longer under warranty.\n\n"
                end
                puts home
#Maintenance
            when "2"
                puts "\tWhich service(s) are you interested in?\n\n\t1. Oil Change \n\t2. Tire Alignment \n\t3. Replace Air Filter \n\t4. Replace Headlights \n\t5. Fill Transmission Fluid\n\n"
            service = gets.chomp
            case  service
            when "1"
                items.push("Oil change")
            when "2"
                items.push("Tire alignment")
            when "3"
                items.push("Replace air filter")
            when "4"
                items.push("Replace headlights")
            when "5"
                items.push("Fill transmission fluid")
            else
                puts "Fine then, damn."
            end
#Loan balance
            when "3"
                puts "\tIn what year did you purchase your vehicle?\n\n"
#trade in value
            when "4"
                puts "\tHow many miles does your engine have on it?\n\n"
                mileage = gets.chomp
            end
    else
        puts ">:(\n"
    end