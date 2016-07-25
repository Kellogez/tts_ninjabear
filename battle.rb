require_relative 'bear'
require_relative 'ninja'

class Battle
	attr_reader :fighter1, :fighter2

	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end 

	# def fight
	# 	@fighter1.attack(fighter2)
	# 	@fighter2.attack(fighter1)
	# 	self.battle_status
	# end

	def ninja_jab
		@fighter2.attack(fighter1)
		self.battle_status
	end

	def bear_scrape
		@fighter1.attack(fighter2)
		self.battle_status
	end 

	def battle_status
		puts "#{fighter1.name} has #{@fighter1.health} health remaining."
		puts "#{fighter2.name} has #{@fighter2.health} health remaining."
	end

end

# puts "The first fighter is a bear. What would you like to name your bear?"
# battle.fighter1.name = gets.chomp
# puts "Excellent. #{battle.fighter1.name} is a great name. What would you like his (numerical) attack to be?"
# battle.fighter1.attack = gets.chomp
# puts "Wonderful. Let's talk about your ninja. What would you like to name your ninja?"
# battle.fighter2.name = gets.chomp
# puts "#{battle.fighter2.name} is a great name for a ninja. What would you like for his (numerial) attack to be?"
# battle.fighter2.attack = gets.chomp
# puts "Great. Are you ready to fight? Y/N"
# ready_status = gets.upcase.chomp
# if ready_status == Y
# 	puts "Today we will be witnessing the ultimate battle between #{battle.fighter1.name} and #{battle.fighter2.name} in 3... 2... 1..."
# else
# 	puts "Lame, come back later."
# end




bear = Bear.new("Yogi", 100, 20)
ninja = Ninja.new("Chucky", 100, 15)
battle = Battle.new(bear, ninja)

until battle.fighter1.health <= 0 || battle.fighter2.health <= 0
	battle.ninja_jab
	battle.ninja_jab
	battle.bear_scrape
end 

if battle.fighter1.health < battle.fighter2.health 
	puts "K.O.!!!! #{battle.fighter1.name} is terminated."
else  
	puts "K.O!!! #{battle.fighter2.name} is terminated."
end
