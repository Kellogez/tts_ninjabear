require_relative 'fighter'

class Ninja <Fighter
	def initalize(name, health, power)
		super(name, health, power)
	end

	def attack (enemy)
		puts "... silence"
		enemy.lose_health(self.power, enemy.health)
	end
end 