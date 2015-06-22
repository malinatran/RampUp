puts "Welcome to the mad world of mad libs! 
What's your name?"
name = gets.chomp.capitalize

puts "Please enter a verb: "
verb = gets.chomp.downcase

puts "Enter a noun (animal): "
noun1 = gets.chomp.downcase

puts "Enter another noun (inanimate object):"
noun2 = gets.chomp.downcase

puts "Enter an adjective: "
adjective = gets.chomp.downcase

puts "Tell me what's your favorite object in the whole wide world: "
object = gets.chomp.split.map { |word| word.capitalize }.join(' ')

puts "What's your favorite hobby?"
hobby = gets.chomp.downcase

puts "Okay - we're almost done! What is your favorite place?"
place = gets.chomp

print "Here's your story!

********* The Earthly Adventures of #{name} *********

  *    .  *       .             *
                         *
 *   .        *       .       .       *
   .     *
           .     .  *        *
       .                .        .
.  *           *                     *
                             .
         *          .   *


Once upon a time, there was a creature named #{name} 
who arrived to Earth from the Mystical Planet of Ruby, 
a place of happiness, coding, and ample resources. 

  .      OOOOOOOOOOOO/OOOO     
     OO..***......./**.....OO         .   +
    OO.....*******/***........OO
  OO......**********...........OO        +      .    .
 OO.........****...*............OO
 O............**.................O      +    .
 O...........*******.............O                +
 O..........*********............O
 OO.........********............OO        .     .
  OO.........*****.............OO    +               +
   OO........***.............OO               +
 +   OO.......**...........OO      .
   .     OOOOOOOOOOOOOOOO            

The first Earthly activity that #{name} wanted to do 
was #{verb} - with secrets plans that involved #{hobby} - 
but was so distracted when an enormous #{noun1} attacked.

Oh no! 

#{name} managed to escape without a scratch. At that very
moment, a seemingly innocuous #{noun2} morphed into
a fiery phoenix and an epic battle ensued.

Earth was such an unexpectedly #{adjective} place!

And so #{name} decided to summon The #{object}, which had 
the magical ability of transporting #{name} to a special 
place: #{place}. 

The End 

  *    .  *       .             *
                         *
 *   .        *       .       .       *
   .     *
           .     .  *        *
       .                .        .
.  *           *                     *
                             .
         *          .   * \n"  


