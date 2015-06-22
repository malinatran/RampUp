puts "What's your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
year = 2015 - age
puts "#{name} was born in #{year}."