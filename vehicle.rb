class Vehicle

	attr_accessor :brand, :model, :year, :color, :body, :tire_health, :oil_health, :brake_health, :fuel_level

	def initialize(brand, model, year, color, body, tire_health, oil_health, brake_health, fuel_level)
		@brand = brand
		@model = model
		@year  = year
		@color = color
		@body  = body
		@tire_health  = tire_health
		@oil_health   = oil_health
		@brake_health = brake_health
		@fuel_level   = fuel_level
	end

	def drive_to_work
		puts "My " + @year.to_s + " " + @brand + " " + @model + ", with the slick, \n" + @color + "-finish, got me to work this morning!"
		@tire_health  -= 10
		@oil_health   -= 2
		@brake_health -= 10
		@fuel_level   -= 15
		puts "Tires: " + @tire_health.to_s + ", Oil: " + @oil_health.to_s + ", Brake: " + @brake_health.to_s + ", Fuel: " + @fuel_level.to_s
	end

	def oil_change
		puts "I changed my oil over the weekend."
		@tire_health  -= 0
		@oil_health   += 30
		@brake_health -= 0
		@fuel_level   -= 0
		puts "Tires: " + @tire_health.to_s + ", Oil: " + @oil_health.to_s + ", Brake: " + @brake_health.to_s + ", Fuel: " + @fuel_level.to_s
	end

	def tire_change
		puts "I went to the shop to get my tires changed."
		@tire_health  += 50
		@oil_health   += 0
		@brake_health -= 0
		@fuel_level   -= 0
		puts "Tires: " + @tire_health.to_s + ", Oil: " + @oil_health.to_s + ", Brake: " + @brake_health.to_s + ", Fuel: " + @fuel_level.to_s
	end

	def paint_job
		puts "I got a new paint job!\nMy " + @year.to_s + " " + @brand + " " + @model + " is now baby blue!"
		@tire_health  += 0
		@oil_health   += 0
		@brake_health -= 0
		@fuel_level   -= 0
		puts "Tires: " + @tire_health.to_s + ", Oil: " + @oil_health.to_s + ", Brake: " + @brake_health.to_s + ", Fuel: " + @fuel_level.to_s
	end
		
	def road_trip
		puts "After ALL this crazy shiz-ness, let's go on a road trip!"
		@tire_health  -= 25
		@oil_health   -= 15
		@brake_health -= 10
		@fuel_level   -= 100
		puts "Tires: " + @tire_health.to_s + ", Oil: " + @oil_health.to_s + ", Brake: " + @brake_health.to_s + ", Fuel: " + @fuel_level.to_s
	end

end

turbo  = Vehicle.new("Ford", "Mustang", 1967, "maroon", "coupe", 100, 50, 50, 100)
slowbo = Vehicle.new("Kia" , "Slowbo" , 2010, "white" , "coupe", 100, 50, 50, 100)

puts "Which car do you want to use?\nTurbo or Slowbo?"
car = gets.chomp

if car == "turbo"
	turbo.drive_to_work()
	turbo.oil_health()
	turbo.tire_change()
	turbo.paint_job()
	turbo.road_trip()
elsif car == "slowbo"
	slowbo.drive_to_work()
	slowbo.oil_health()
	slowbo.tire_change()
	slowbo.paint_job()
	slowbo.road_trip()
else
	puts "ok, then go back to bed."
end