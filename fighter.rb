class Fighter
	attr_reader :name
	#these are things that are read, not ones that we write
	attr_accessor :health, :power
	#they're attributes we can use and attributes we can change

	def initialize(name, health, power)
		@name = name
		@health = health 
		@power = power 
	end 
	#the @ means that we can use them in ALL the methods--if not, the variables would be local

	def introduction
		puts "#{@name} has health #{@health} and power #{@power}."
	end 

	def attack (enemy)
		enemy.lose_health(self.power, enemy.health)
	end 
	#whoever is attacking is going to lose health by our power 

	def lose_health(enemy_power, health)
		self.health -= enemy_power
	end 
	#your health is going down as much as the enemy's power

end

# ali = Fighter.new("Muhammah Ali", 100, 20)
# tyson = Fighter.new("Mike Tyson", 100, 10)
# puts ali.attack(tyson)
# puts tyson.inspect
# puts tyson.attack(ali)
# puts ali.inspect