# Options
# 1. Press 1 to add score
# 	Ask for score
# 	Break out
# 	Yankee 5, Mets 4
# 	if teams.include ? ("Yankee")
# 	if not teams << Team.new("Yankee")
# 	exit
# 2. Press 2 to display rankings (output)
# 	Use sort


# class LPC
# 	attr: accessor
# 	@teams = []
# class Team
# 	name
# 	points

class LPC
	attr_accessor :team, :points
	def initialize
		@teams = {}
	end

	def display_menu
		puts "Welcome to the Big Leagues!"
		while true
			puts "Please select your option by entering one of the following numbers:\n[1] to add game results\n[2] to display league rankings\n[3] to exit this program."
			choice = gets.chomp.to_s
			if choice == "1"
				assign_points
			elsif choice == "2"
				show_rankings
			elsif choice == "3"
				break
			else
				puts "Please enter 1, 2, or 3."
			end
		end
	end

	attr_accessor :team1_name, :team1_score, :team2_name, :team2_score
	def assign_points
		puts "\nPlease add game results like so: team 1's name and score, team 2's name and score."
		team1, team2 = gets.chomp.split(",")
		team1_name, team1_score = team1.split(" ")
		team2_name, team2_score = team2.split(" ")
		team1_name = team1_name.capitalize
		team2_name = team2_name.capitalize
		team1_score = team1_score.to_i
		team2_score = team2_score.to_i

		if !@teams.has_key?(team1_name)
			@teams[team1_name] = 0
		end

		if !@teams.has_key?(team2_name)
			@teams[team2_name] = 0
		end

		if team1_score > team2_score
			@teams[team1_name] += 3
		elsif team1_score < team2_score
			@teams[team2_name] += 3
		else team1_score == team2_score
			@teams[team1_name] += 1
			@teams[team1_name] += 1
		end
		puts "\nYou have successfully added game results between #{team1_name} and #{team2_name}.\n"
	end

	def show_rankings
		puts "\nHere are the league rankings (highest score first):" 
		puts @teams.sort_by {|team, points| points}.reverse!
	end
end

LPC.new.display_menu