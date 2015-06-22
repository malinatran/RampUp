puts "Let's count leap years! Give me a starting year: "
starting_year = gets.chomp.to_i

puts "Give me an ending year (must be later than starting year): "
ending_year = gets.chomp.to_i

puts "Here are the leap years in between those years: "
(starting_year..ending_year).each do |year|
	puts year if (year % 4 == 0 unless year % 100 == 0) || (year % 100 == 0 && year % 400 == 0)
end 
