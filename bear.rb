require_relative 'fighter'

class Bear < Fighter
	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		puts "RAWR!!"
		enemy.lose_health(self.power, enemy.health)
	end
end

# bear = Bear.new("Bert", 100, 12)
# tyson = Fighter.new("Mike Tyson", 100, 10)
# puts bear.attack(tyson)

