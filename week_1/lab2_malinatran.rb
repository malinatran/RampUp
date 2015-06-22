def celsius_to_fahrenheit
	puts "Enter the temperature in celsius: "
	input = gets.chomp.to_i
	fahrenheit = (input*(9.0/5) + 32).to_i
	puts "That is #{fahrenheit} in Fahrenheit."
end

celsius_to_fahrenheit