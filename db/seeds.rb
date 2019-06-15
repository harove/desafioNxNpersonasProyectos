# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Employee.destroy_all
Project.destroy_all

6.times do |i|
         Employee.create({
         name:"name #{i+1}" ,
         })
end      #6 Employees



10.times do |i|
   p=Project.create({
   name:"title #{i+1}",
   }) #1Project
   4.times do |i|
      p.employees << Employee.order('RANDOM()').first
   end # 4 Proyectos
end   