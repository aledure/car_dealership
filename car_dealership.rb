def greeting(name)
    puts "Hello, my name is #{name.capitalize}, how can I help you?"
end

greeting("wallace")

def car(year, make, model)
    puts "We do not have a #{year} #{make.capitalize} #{model.capitalize}. Or any other cars. This is an Applebees, sir. Please leave."
end

car("2020", "toyota", "camry")