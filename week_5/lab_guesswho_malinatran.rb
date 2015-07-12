# Suspect: skin, eye, gender, hair, name
# Guess_who: number_of_guesses, guilty person, suspects

# Guess_who
  # 1. Creates suspects, put into suspects array
  # 2. Randomly selects guilty person

# 1. Print out list of suspects
# 2. User chooses an attribute (skin, eye, gender, or hair)
# 3. Choose _eye_ color (brown, blue, black)
# 4. Check against guilty person; if yes, return yes attributes; if no, return no attributes
# 5. User makes a guess; if yes, you win; if no, remove wrong guess and minus 1 guess
# 6. Repeat 1 to 5.

class Suspect
  attr_reader :name, :hair_color, :gender, :eye_color, :skin_color

  def initialize(record)
   attributes = record.split
   @name = attributes[0]
   @gender = attributes[1]
   @skin_color = attributes[2]
   @hair_color = attributes[3]
   @eye_color = attributes[4]
 end

end
class GuessWho
  attr_reader :suspects, :guilty_one
  attr_accessor :guess_count

  def initialize
    @guess_count = 3
    play_game
  end

  private
  def create_suspects
    @suspects = []
    suspects << Suspect.new("rachel girl black auburn brown")
    suspects << Suspect.new("mac boy white black brown")
    suspects << Suspect.new("nick boy white brown blue")
    suspects << Suspect.new("angie girl white auburn green")
    suspects << Suspect.new("theo boy white blonde brown")
    suspects << Suspect.new("joshua boy white black brown")
    suspects << Suspect.new("emily girl white blonde blue")
    suspects << Suspect.new("jason boy white blonde green")
    suspects << Suspect.new("john boy white brown blue")
    suspects << Suspect.new("grace girl black black brown")
    suspects << Suspect.new("jake boy white brown brown")
    suspects << Suspect.new("megan girl white blonde green")
    suspects << Suspect.new("ryan boy white auburn brown")
    suspects << Suspect.new("brandon boy white blonde brown")
    suspects << Suspect.new("beth girl white blonde brown")
    suspects << Suspect.new("diane girl black brown brown")
    suspects << Suspect.new("chris boy white black green")
    suspects << Suspect.new("david boy black black brown")
    suspects << Suspect.new("michelle girl black brown brown")
    suspects << Suspect.new("tyson boy black black brown")
    suspects << Suspect.new("ursula girl white auburn green")
  end

  def set_guilty_one
    @guilty_one = suspects.shuffle.last
  end

  def play_game
    create_suspects
    set_guilty_one
    start_game
  end

  def start_game
    puts "? ? ? ? ? WELCOME TO GUESS WHO ? ? ? ? ?"
      print_list_of_suspects

    while guess_count > 0
      puts "------------------------------------------------------------------------------------"
      puts "To identify the guilty person by attribute, choose one: hair / gender / eyes / skin."
      puts "You will then be prompted to take a guess about that attribute. Or type exit."

      choice = gets.chomp.downcase
      puts "Invalid command" if !['hair', 'gender', 'eyes', 'skin', 'exit'].include?(choice)
      return false if choice == "exit" or ask_questions(choice) == false
    end
  end

  def print_list_of_suspects
    puts "----------------"
    puts "LIST OF SUSPECTS"
    puts "----------------"
    suspects.each do |suspect|
      puts suspect.name.capitalize
    end
  end

  def ask_questions(choice)
    case choice
    when "hair"
      ask_about_hair
    when "gender"
      ask_about_gender
    when "eyes"
      ask_about_eye
    when "skin"
      ask_about_skin
    when "exit"
      false
    end
  end

  def ask_about_hair
    puts "\nChoose a hair color: brown / black / blonde / auburn"
    hair = gets.chomp.downcase

    if hair != guilty_one.hair_color
      suspects.reject! { |suspect| suspect.hair_color == hair }
      puts "\nThe suspect's hair color is not #{hair}."
      puts "Here are the remaining suspects who do not have #{hair} hair:"
      print_list_of_suspects
    end

    if hair == guilty_one.hair_color
      suspects.keep_if { |suspect| suspect.hair_color == hair }
      puts "\nYes, the suspect's hair color is #{hair}."
      puts "Here are the suspects with #{hair} hair:"
      print_list_of_suspects
    end
    take_a_guess
  end

  def ask_about_gender
    puts "\nChoose a gender: girl / boy"
    gender = gets.chomp.downcase

    if gender != guilty_one.gender
      suspects.reject! { |suspect| suspect.gender == gender }
      puts "\nThe suspect's gender is not a #{gender}."
      puts "Here are the remaining suspects who are not #{gender}s:"
      print_list_of_suspects
    end

    if gender == guilty_one.gender
      suspects.keep_if { |suspect| suspect.gender == gender }
      puts "\nYes, the suspect is a #{gender}."
      puts "Here are the suspects who are #{gender}s:"
      print_list_of_suspects
    end
    take_a_guess
  end

  def ask_about_eye
    puts "\nChoose an eye color: blue / brown / green"
    eyes = gets.chomp.downcase

    if eyes != guilty_one.eye_color
      suspects.reject! { |suspect| suspect.eye_color == eyes }
      puts "\nThe suspect's eye color is not #{eyes}."
      puts "Here are the remaining suspects who do not have #{eyes} eyes:"
      print_list_of_suspects
    end

    if eyes == guilty_one.eye_color
      suspects.keep_if { |suspect| suspect.eye_color == eyes }
      puts "\nYes, the suspect's eye color is #{eyes}."
      puts "Here are the suspects who have #{eyes} eyes:"
      print_list_of_suspects
    end
    take_a_guess
  end

  def ask_about_skin
    puts "\nChoose a skin color: black / white"
    skin = gets.chomp.downcase

    if skin != guilty_one.skin_color
      suspects.reject! { |suspect| suspect.skin_color == skin }
      puts "\nThe suspect's skin color is not #{skin}."
      puts "Here are the remaining suspects whose skin color is not #{skin}:"
      print_list_of_suspects
    end

    if skin == guilty_one.skin_color
      suspects.keep_if { |suspect| suspect.skin_color == skin }
      puts "\nYes, the suspect's skin color is #{skin}."
      puts "Here are the suspects whose skin color is #{skin}:"
      print_list_of_suspects
    end
    take_a_guess
  end

  def take_a_guess
    puts "\nPlease guess the name of the guilty person:"
    name = gets.chomp.downcase

    if name == guilty_one.name.downcase
      puts "\nYou have selected the guilty person. You win!"
      @guess_count = 0
      return

    elsif name != guilty_one.name.downcase
      @guess_count -= 1
      puts "\nThe suspect is not #{name.capitalize}. You have #{@guess_count} #{@guess_count == 1 ? 'guess' : 'guesses'} left.\n\n"
      if @guess_count == 0
        puts "The guilty one is #{guilty_one.name.capitalize}."
      if @guess_count > 0 
        start_game
      end
    end
  end
end

GuessWho.new
puts "The game is done!"
end