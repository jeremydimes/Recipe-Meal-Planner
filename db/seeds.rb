# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "Jeremy", email: "jeremy@test.com", password: "password", image_url: "")
User.create(name: "Robocop", email: "robocop@test.com", password: "password", image_url: "")
Ingredient.create(name: "chicken", image_url: "")
Ingredient.create(name: "Waffles", image_url: "")
Ingredient.create(name: "Gumbo", image_url: "")
Ingredient.create(name: "Steak", image_url: "")
Ingredient.create(name: "Pie", image_url: "")
PantryItem.create(ingredient_id: "5", user_id: "1", amount: "")
PantryItem.create(ingredient_id: "2", user_id: "1", amount: "")
