# def check_plural(x)
# 	if x >= 2 
# 		"bottles"
# 	else
# 		"bottle"
# 	end
# end

number = 99

while number >= 2
	puts "#{number} #{(number == 1) ? 'bottle' : 'bottles'} of beer on the wall,
#{number} #{(number == 1) ? 'bottle' : 'bottles'} of beer,
You take one down and pass it around,
#{number-1} #{(number-1 == 1) ? 'bottle' : 'bottles'} of beer on the wall."
	number -= 1

	if number == 1
		puts "1 bottle of beer on the wall,
1 bottle of beer,
You take one down and pass it around,
Now you have no more beers on the wall."
	end

end

