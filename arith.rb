puts "Hello, I need two numbers from you."
puts "Please enter your first number: "
x = gets.chomp.to_i

puts "Thanks! Please enter your second number: "
y = gets.chomp.to_i

puts "What would you like to do: add, subtract, multiply, or divide?"
a = gets.chomp.capitalize

def arithmetic(x, y, a)
	if a == "Add"
		z = x + y
		puts "Your numbers added together is " 	  + z.to_s + "!"
	elsif a == "Subtract"
		z = x - y
 		puts "The difference of your numbers is " + z.to_s + "!"
	elsif a == "Multiply"
		z = x * y
		puts "The product of your numbers is "    + z.to_s + "!"
	else a == "Divide"
		z = x / y
		puts "Your numbers divided together is "  + z.to_s + "!"		
	end
end	

arithmetic(x, y, a)
puts "Thanks!"
