def remainder
	puts "Enter first number:"
	x = gets.chomp.to_i
	puts "Please enter another number:"
	y = gets.chomp.to_i
	a = x / y
	b = x % y
	puts "Your first number divided by your second number is " + a.to_s + "."
	puts "The remainder of your first number divided by your second number is " + b.to_s + "."
end

remainder()