number = rand(100)

puts "I have a number in mind; it's between 1 and 100.
You have 5 chances to guess the right number!
What number do you choose?"

for i in 0...5
	
	guess = gets.chomp.to_i
	
	if guess == number
		puts "Congratulations!"
		break

	elsif i == 4
		puts "Game over. You lose. The number was #{number}."

	elsif guess > number 
		puts "The number is lower. You have #{4-i} chances left. Guess again."

	else
		puts "The number is higher. You have #{4-i} chances left. Guess again."
	
	end

end