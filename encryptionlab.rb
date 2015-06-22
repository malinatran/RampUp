vault = {}
	
while true
	puts "Welcome to the encryption vault!
	Please enter one of the following commands:
	(1) I want to encrypt something
	(2) I want to decrypt something
	(3) Exit"

	choice = gets.chomp.to_i

	if choice == 1
		puts "Please enter what you would like to encrypt:"
		to_encrypt = gets.chomp
		vault[to_encrypt] = rand(14..93)
		puts "You have successfully encrypted your code: #{vault[to_encrypt]}."

	elsif choice == 2
		puts "Please enter what you would like to decrypt:"
		to_decrypt = gets.chomp
		vault.key(to_decrypt)
		puts "You have successfully decrypted your code:#{vault.key(to_decrypt)}"

	elsif choice == 3
		puts "Thanks for visiting the encryption vault!"
		break

	else 
		puts "I don't recognize that command. Enter 1, 2, or 3."

	end

end