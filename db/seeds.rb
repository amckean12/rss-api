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


Article.create(title: "A News Article",
article_link: "https://www.google.com/", 
published_date: Time.local(2020, 3, 30, 11, 10),
description: "Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: true,
img_src:"https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iUqQrbWEDNrc/v0/800x600.jpg",
img_alt:"Health Image",
user_id: 1)
Article.create(title: "This is a news article",
article_link: "https://www.forbes.com/#6206240f2254", 
published_date: Time.local(2020, 3, 30, 11, 00),
description: "ididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: true,
img_src:"https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iko9rZekFy9k/v0/800x600.jpg",
img_alt:"GM Ventilators",
user_id: 1)
Article.create(title: "Test article",
article_link: "https://www.bloomberg.com/", 
published_date: Time.local(2020, 3, 30, 9, 10),
description: "nim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: "Okay, this is a news article",
article_link: "https://www.businessinsider.com/", 
published_date: Time.local(2020, 3, 25, 11, 10),
description: "aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: "Zis should be the last article",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2020, 1, 30, 11, 10),
description: "sed olore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: "Hello world",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2019, 3, 30, 11, 10),
description: "sedmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: "B7 articles",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2018, 3, 30, 11, 10),
description: "sed do eiusmod tempor incim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: " gArticle Title 8",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2015, 3, 30, 11, 10),
description: "sed do eiusmod tea. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 1)
Article.create(title: "This is Article Title 9",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2020, 3, 30, 11, 10),
description: "sed do eiusmod tempor incidi ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 2)
Article.create(title: "This is Article Title 10",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2020, 3, 30, 11, 10),
description: "sed do eiusmod tempor incididunt ut labore et dolore  ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 2)
Article.create(title: "This is Article Title 11",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2020, 3, 30, 11, 10),
description: "sed do eiusmod tempo labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 3)
Article.create(title: "This is Article Title 12",
article_link: "https://rubyonrails.org/", 
published_date: Time.local(2020, 3, 30, 11, 10),
description: "sed do eiusmod temut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
image: false,
user_id: 3)