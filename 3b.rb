require_relative '3a.rb'

class Car < Vehicle
	@@instances = 0
	def initialize
		@@instances += 1
	end 
	def engine_start
		puts 'El motor se ha encendido'
	end
	def self.get_number_of_instances
		@@instances
	end 
end 

car1 = Car.new
car1.engine_start

10.times do |i|
	Car.new
end 

print Car.get_number_of_instances