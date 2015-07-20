class Person
	def say_word(word)
      puts “#{word}”
  end 
  def say_secret_word
  	puts secret_word
  end
  private 
  def secret_word
  	“this is a secret”
  end
end

person = Person.new
person.say_word("hello")
puts person.secret_word
person.say_secret_word