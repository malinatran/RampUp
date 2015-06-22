puts "You're a traveler on a long journey to LA.
You're on a plane with two snoring people behind you.
After many miles in the air, you discover two seats are open.
To the front of the plane is business class seating.
To the back is a seat next to a cute person. 
Which way do you go? Front or back?"

direction = gets.chomp

if direction == "front"
	puts "Nice! You scored leg space, no snoring, and freedom."

elsif direction == "back"
	puts "Oh no, you're near the smelly restroom."

else 
	puts "Choose a new seat, or else you will suffer."

end