# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all 

user1 = User.create(username: "warrenniu", first_name: "Warren", last_name: "Niu")

task1 = Task.create(title: "Task 1", description: "This is the first task", completed: false, user_id: 1)


