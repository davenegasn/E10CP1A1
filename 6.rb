module Test
	def result
		total = (nota1 + nota2) / 2.0
		if total > 4 
			puts "Estudiante aprobado"
		else 
			puts "Estudiante reprobado"
		end  
	end 
end 

module Attendance
	def student_quantity
		puts "La cantidad de alumnos es #{quantity}"
	end 
end 

class Student
	include Test
	extend Attendance
	attr_reader :nota1, :nota2
	@@quantity = 0
	def initialize(nombre = 4, nota1 = 4, nota2 = 4)
		@nombre = nombre 
		@nota1 = nota1 
		@nota2 = nota2
		@@quantity += 1
	end 
	def self.quantity
		@@quantity
	end 
end 

students = [["Daniela", 6, 7], ["Carlos", 8,9]]
students.each do |student|
	Student.new(*student).result
end 
Student.student_quantity
