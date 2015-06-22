vault = {}
	
while true
	puts "Welcome to the encryption vault!
	Please enter one of the following commands:
	(1) Encrypt
	(2) Decrypt
	(3) Exit"

	choice = gets.chomp

	if choice == 1
		puts "Please enter what you would like to encrypt: "
		to_encrypt = gets.chomp
		puts vault
		vault[to_encrypt] = rand(14..93)
		puts "You have successfully encrypted your code: #{rand(14..93)}."

	end

end