# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Touhid", password: "Password1")
User.create(username: "Shamima", password: "Password1")
User.create(username: "Neha", password: "Password1")
User.create(username: "Sneha", password: "Password1")

Message.create(body: "Hi, I am here", user_id: 1)
Message.create(body: "Hello, I am here too", user_id: 2)
Message.create(body: "Welcome to you both.", user_id: 3)
Message.create(body: "Thank you for joining the chat", user_id: 3)
