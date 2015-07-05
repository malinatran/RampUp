table = { 
	"a" => "m",
	"b" => "n",
	"c"	=> "o",
	"d" => "p",
	"e" => "q",
	"f" => "r",
	"g" => "s",
	"h" => "t",
	"i" => "u",
	"j" => "v",
	"k" => "w",
	"l" => "x",
	"m" => "y",
	"n" => "z",
	"o" => "a",
	"p" => "b",
	"q" => "c",
	"r" => "d",
	"s" => "e",
	"t" => "f",
	"u" => "g",
	"v" => "h",
	"x" => "i",
	"y" => "j",
	"z" => "k"
}

while true
	puts "
	================================
	Welcome to the encryption vault!
	What would you like to do?
	[1] Encrypt [2] Decrypt [3] Exit
	================================
	"

	choice = gets.chomp.to_i # could  be string

	if choice == 1
		puts "Please enter what you would like to encrypt:"
		original_word = gets.chomp.split("")
		encrypted_word = original_word.map { |x|
			if table.has_key?(x)
				table[x]
			else 
				x
			end 
		}.join("")
		puts "You have successfully encrypted your code: #{encrypted_word}."

	elsif choice == 2
		puts "Please enter what you would like to decrypt:"
		original_word = gets.chomp.split("")
		decrypted_word = original_word.map { |x|
			if table.has_value?(x)
				table.key(x)
			else
				x
			end
		}.join("")
		puts "You have successfully decrypted your code: #{decrypted_word}."

	elsif choice == 3
		puts "Thanks for visiting the encryption vault!"
		break

	else 
		puts "I don't recognize that command. Enter 1, 2, or 3."

	end

end