module Mammal
	def breathe_air
		puts "inahle exhale air"
	end
end

module Feline
	def purr
		puts "purr"
	end
end

class Cat
	include Feline
	include Mammal
end

cat = Cat.new
cat.purr
cat.breathe_air
