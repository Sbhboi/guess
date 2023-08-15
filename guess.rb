puts "Roll the Dice !"
secret_number = 59
puts secret_number

counter = 1
chances = 6


while counter <= chances do

	answer = gets.chomp.to_i

	if answer > secret_number
		puts "Whelp, too high"
	elsif answer < secret_number
		puts "Noope, too low"
	else
		puts "You are correct!"
		break
	end
	
	
	counter +=1
end