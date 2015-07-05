class Person
# instance methods inside of here
	def initialize(name, age)
		@name = name
		@age = age
	end 

	def introduces_self
		puts "Hi, my name is #{@name}."
		puts "And I am #{@age}."
	end

end

malina = Person.new("Malina", "25")
malina.introduces_self

other = Person.new("Random Person", "10")
other.introduces_self
#creates new instance of the class
# new object is created; has a unique ID
# alternatively, "Person.new.say_hello"
