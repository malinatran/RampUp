require 'httparty'

class Bike_the_Branches
	attr_accessor :time, :books
	def initialize
		response = HTTParty.get("https://data.cityofnewyork.us/resource/kh3d-xhq7.json")
		@neighborhoods = JSON.parse(response.body).map do |neighborhood|
			neighborhood['name']
		end
		@time = 5
		@books = ["Danielle Steel", "Ta-Nehisi Coates", "JK Rowling", "Stephen King", "Judy Blume", "Malcolm Gladwell", "Toni Morrison"]
		enroll
	end

	def enroll
		puts "Thank you for joining the inaugural Bike the Branches, Queens edition!"
		puts "\nWhat is your name?"
		name = gets.chomp
		puts "\nHi #{name.capitalize}. Were you born, raised, or currently live in Queens? (yes/no)"
		origin = gets.chomp.downcase
		if origin == "yes"
			puts "\nQUEENS IN DA HOUSE!"
		elsif origin == "no"
			puts "\nAlrighty, n00b. Welcome to Queens!"
		else 
			puts "\nYou must be from Staten Island."
		end
		puts "\nGet ready, #{name.capitalize}! This is the one Saturday of the year where all of the 
Queens Public Library branches are open and where hundreds of Queens residents 
visit different branches. You have 5 hours to bike to as many branches as 
possible. You get to choose your own route, and visit local restaurants and bars 
along the way. Let your adventures begin."
		choose_neighborhood
	end

	def choose_neighborhood
		puts "\nWhich neighborhood do want to go to? Enter:
1. View list of neighborhoods  
2. Enter the name of a neighborhood"
		choice = gets.chomp
		if choice == "1"
			list_of_neighborhoods
		elsif choice == "2"
			while true
				puts "\nWhat is the name of the neighborhood you'd like to visit?"
				neighborhood = gets.chomp
				if @neighborhoods.include?(neighborhood.split.map(&:capitalize).join(' '))
					encoded_response = URI.encode(neighborhood)
					response = HTTParty.get(
						"https://data.cityofnewyork.us/resource/kh3d-xhq7.json?name=#{encoded_response}")
					library = JSON.parse(response.body)[0]
					puts "\nGreat! Let's put it in Google Maps and go!

---------- __o       __o       __o       __o
-------- _`\\<,_    _`\\<,_    _`\\<,_    _`\\<,_
------- (*)/ (*)  (*)/ (*)  (*)/ (*)  (*)/ (*)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

					\nCongrats, you made it to the #{neighborhood.split.map(&:capitalize).join(' ')} branch!"
					address = JSON.parse(library['location_1']['human_address'])
					puts address['address']
					puts "#{address['city']}, #{address['state']} #{address['zip']}"
					puts library['phone']
					@time -= 1
					at_library
				elsif 
					puts "I didn't recognize that neighborhood."
				end
			end
		end
	end

	def list_of_neighborhoods
		puts "\nHere is the list of neighborhoods:"
		puts @neighborhoods
		choose_neighborhood
	end

	def at_library
		while @time >= 1
			puts "\nWhat do you want to do while you're here? Enter:
1. Check out a book
2. Eat at a restaurant or drink at a bar
3. Go to another library"
			choice = gets.chomp
			if choice == "1"
				puts "Great choice. Knowledge is power. You just picked up a book by #{@books.shuffle.last}."
				@time -=1
			elsif choice == "2"
				puts "Delicious choice! ...but after you eat, you feel a little stuffed. Can't ride your bike."
				@time -= 1
			elsif choice == "3"
				choose_neighborhood
			end
		end

		puts "Thanks for joining us for Bike the Branches! 
Unfortunately, we're done for the day and all of the libraries are closed."
		exit
	end
end

Bike_the_Branches.new