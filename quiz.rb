puts "Welcome to Quizmaker Ruby!\nHow many questions do you want to create?\nChoose between 1 and 5:"
questions = gets.chomp.to_i

def run_quiz
	questions = {
	"An integer is a decimal number." => "true"
	}
	questions.each { |question|
		puts question
	}
end
run_quiz()

# def run_quiz(questions)
# 	answer = ""
# 	score = 0
# 	for question in questions
# 		puts question.prompt

# 		if answer == question.answer
# 			score += 1
# 		end
# 	end
# 	puts ("You got " + score.to_s + "/" + questions.length().to_s)
# end

# ruby_quiz(questions)
