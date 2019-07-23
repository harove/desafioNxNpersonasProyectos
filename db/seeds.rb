# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Todo.destroy_all

6.times do |i|
         User.create({
         name:"name #{i+1}" ,
         photo:"https://picsum.photos/id/#{i+1}/200/200",
         email:"email#{i+1}@desafio.cl" 
         password: "123456"
         password_confirmation: "123456"
         })
end      #6 Employees



10.times do |i|
   t=Todo.create({
   title:"title #{i+1}",
   }) #1Project
   4.times do |i|
      t.users << Todo.order('RANDOM()').first
   end # 4 Proyectos
end   