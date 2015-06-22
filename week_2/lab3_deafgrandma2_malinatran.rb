num_byes = 0

puts "Your grandma is going deaf. Try talking to her.
Your grandma: HI! HOW YA DOIN'?!"

while num_byes < 3

	words = gets.chomp

	if words == "BYE"
		puts "Your grandma: BUY WHAT?!"
		num_byes += 1
	elsif words == words.upcase
		puts "Your grandma: NO, NOT SINCE #{rand(1930..1980)}! HOW YA DOIN'?!"
		num_byes = 0
	else 
		puts "Your grandma: HUH?! SPEAK UP, SONNY!"
		num_byes = 0
	end

end

puts "Your grandma: AH, GOODBYE, SONNY!"