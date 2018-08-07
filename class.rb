class Dog

	attr_accessor :name, :health, :speed, :strength

	def initialize(name,health,speed,stamina,strength)
		@name     = name
		@health   = health #this is left as a variable
		@stamina  = stamina
		@strength = strength
	end

	def woof
		puts "WOOF! WOOF!"
		@stamina -=5
		@strength +=3
	end

	def fetch
		puts "The dog ran to fetch the ball."
		@stamina -=7
	end

end

#instance = Class.new(attr1,attr2,)
dog1 = Dog.new('tyrone',100,70,30)

#to call method
dog1.woof()