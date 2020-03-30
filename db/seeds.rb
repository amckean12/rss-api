# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username:"ajmckean", password:"password")
User.create(username:"ajmckean2", password:"password")
User.create(username:"ajmckean3", password:"password")
User.create(username:"ajmckean4", password:"password")
User.create(username:"ajmckean5", password:"password")


Article.create(title: "This is Article Title 1", 
    article_link: "https://www.google.com/", 
    published_date: Time.parse("8:47am Dec 7th, 2019").utc, 
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
    image: false)