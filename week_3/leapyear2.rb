def leap_year(x,y)

	(x..y).select do |year|
		year if (year % 4 == 0 unless year % 100 == 0) || (year % 400 == 0)
	end

end

# def leap_year(x,y)
# 	years = []

# 	for year in x..y
# 		if (year % 4 == 0 unless year % 100 == 0) || (year % 400 == 0)
# 			years.push(year)
# 		end
# 	end

# 	return years
# end

puts leap_year(1800,1900)