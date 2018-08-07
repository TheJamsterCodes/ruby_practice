class Tournament

	attr_accessor :team1, :team2, :team3, :team4, :team5, :team6, :team7, :team8, :team9

	def initialize(team1, team2, team3, team4, team5, team6, team7, team8, team9)
		@team1 = team1
		@team2 = team2
		@team3 = team3
		@team4 = team4
		@team5 = team5
		@team6 = team6
		@team7 = team7
		@team8 = team8
		@team9 = team9
	end

	def list_seeds
		puts
		puts "Here are the teams you've entered:"
		puts "(1) " + @team1
		puts "(2) " + @team2
		puts "(3) " + @team3
		puts "(4) " + @team4
		puts "(5) " + @team5
		puts "(6) " + @team6
		puts "(7) " + @team7
		puts "(8) " + @team8
		puts "(9) " + @team9
	end

	def set_matchup
		puts
		puts "ROUND 1:"
		puts "(1) " + @team1 + " have a 'bye'."
		puts "(2) " + @team2 + " v " + "(9) " + @team9
		puts "(3) " + @team3 + " v " + "(8) " + @team8
		puts "(4) " + @team4 + " v " + "(7) " + @team7
		puts "(5) " + @team5 + " v " + "(6) " + @team6
	end

end

while true
	puts "Welcome to the NBA Tournament Generator.\nEnter nine Western Conference teams:"
	puts "Team 1:"
	team1 = gets.chomp.capitalize
	puts "Team 2:"
	team2 = gets.chomp.capitalize
	puts "Team 3:"
	team3 = gets.chomp.capitalize
	puts "Team 4:"
	team4 = gets.chomp.capitalize
	puts "Team 5:"
	team5 = gets.chomp.capitalize
	puts "Team 6:"
	team6 = gets.chomp.capitalize
	puts "Team 7:"
	team7 = gets.chomp.capitalize
	puts "Team 8:"
	team8 = gets.chomp.capitalize
	puts "Team 9:"
	team9 = gets.chomp.capitalize
	first_round = Tournament.new(team1, team2, team3, team4, team5, team6, team7, team8, team9)
	first_round.list_seeds()
	first_round.set_matchup()
	puts
	puts "Do you agree with this matchup? Yes or No?"
	agree = gets.chomp.capitalize
	break if agree == "Yes" || agree == "Y"
end

puts "LET'S BALL!!!!"