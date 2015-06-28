def leap_year

	puts "Give me a starting year:"
	starting_year = gets.chomp.to_i

	puts "Give me an ending year:"
	ending_year = gets.chomp.to_i

	puts "These are the leap years in between:"

	(starting_year..ending_year).each do |year|
		puts year if (year % 4 == 0 unless year % 100 == 0) || (year % 400 == 0)

	end

end

leap_year