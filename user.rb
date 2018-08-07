class User

	attr_accessor :name, :health, :stamina, :weight, :thirst

	def initialize(name, health, stamina, weight, thirst)
		@name    = name
		@health  = health
		@stamina = stamina
		@weight  = weight
		@thirst  = thirst
	end

	def run
		puts @name + " is running!"
		@health  += 5
		@stamina -= 20
		@weight  -= 1
		@thirst  -= 30
		puts "health increases to "  + @health.to_s
		puts "stamina decreases to " + @stamina.to_s
		puts "weight decreases to "  + @weight.to_s
		puts "thirst decreases to "  + @thirst.to_s
	end

	def drink
		puts @name + " drinks beer to quench his thirst and recover."
		@health  += 5
		@stamina += 10
		@weight  += 2
		@thirst  += 30
		puts "health increases to "  + @health.to_s
		puts "stamina increases to " + @stamina.to_s
		puts "weight increases to "  + @weight.to_s
		puts "thirst increases to "  + @thirst.to_s
	end

	def sleep
		puts @name + " sleeps!"
		@health  += 5
		@stamina += 30
		@thirst  -= 40
		puts "health increases to "  + @health.to_s
		puts "stamina increases to " + @stamina.to_s
		puts "thirst decreases to "  + @thirst.to_s
	end

end

james = User.new('James', 70, 60, 170, 50)

james.run()
james.drink()
james.sleep()