puts "Your grandma is going deaf. Try talking to her.

Your grandma: HI! HOW YA DOIN'?!"

while true

	words = gets.chomp

	if words == "BYE"
		puts "OKAY, KIDDO! GREAT SEEING YOU!"
		break

	elsif words == words.upcase
		puts "Your grandma: NO, NOT SINCE #{rand(1930..1980)}! 
		HOW YA DOIN'?!"

	else 
		puts "Your grandma: HUH?! SPEAK UP, SONNY!"

	end

end