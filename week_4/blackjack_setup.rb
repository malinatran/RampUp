class Blackjack
	attr_accessor :player, :dealer, :deck
	def initialize
		@player = Player.new
		@dealer = Dealer.new
		@deck = ([1,2,3,4,5,5,6,7,8,9]*4 + [10]*16).shuffle!
		game_play
	end

	def deal_to_player
		self.player.hand << self.deck.pop
	end 

	def deal_to_dealer
		self.dealer.hand << self.deck.pop
	end 

	def deal_cards
		2.times do 
			deal_to_player
			deal_to_dealer
		end 
	end

	def game_play
		deal_cards
		while true do
			puts "Player, you have total of #{player.total_points} points."
			puts "Would you like to hit? (Y/N)"
			choice = gets.chomp
				if choice == "Y"
					deal_to_player
				elsif choice == "N"
					puts "Okay. You are staying at #{player.total_points}."
					break
				end
		end
end

class Player
	attr_accessor :hand
	def initialize
		@hand = []
	end

	def total_points
		self.hand.inject(:+)
	end

	def bust?
		self.total_points > 21
	end 
end

class Dealer
	attr_accessor :hand
	def initialize
		@hand = []
	end 

	def total_points
		self.hand.inject(:+)
	end

	def bust?
		self.total_points > 21
	end 
end 

game = Blackjack.new