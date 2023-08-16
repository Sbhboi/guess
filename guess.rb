scoring_card = {}

loop do

	puts "Roll the Dice !"
	secret_number = 59
	puts "Enter your Name"
	player_name = gets.chomp
	puts "Hello #{player_name}"
	#puts secret_number
	puts "Lets Roll ~!"

	counter = 1
	chances = 6
	guesses = []

	while counter <= chances do

		answer = gets.to_i

			if answer > secret_number
				puts "Whelp, too high"
			elsif answer < secret_number
				puts "Noope, too low"
			else
				puts "You are correct!"
				break
			end
		
		guesses << answer
		puts "guesses: #{guesses}"
		counter +=1
	end

	puts "Quick Guesser !"
	scoring_card[player_name] =counter
	scoring_card.sort_by {|player,score| score}.each do |player, score|
		puts "#{player}: #{score}"
	end

	puts "Continue?"
	puts "Y - Yes"
	puts "N - No"

	play = gets.chomp.downcase
	break if play != "y"
 
end

puts "Thank you for playing ~!"
