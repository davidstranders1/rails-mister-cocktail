# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

puts "creating some ingredients"


@mint = Ingredient.create(name: "mint leaves")
@tomato = Ingredient.create(name: "tomato juice")
@ice = Ingredient.create(name: "ice")
@lemon = Ingredient.create(name: "lemon")
@orange = Ingredient.create(name: "orange juice")
@vodka = Ingredient.create(name: "vodka")



@moscow = Cocktail.create(name: "Moscow Mule")
@bloody = Cocktail.create(name: "Bloody Mary")
@screwdriver = Cocktail.create(name: "Screwdriver")
@mojito = Cocktail.create(name: "Mojito")
@daiquiri = Cocktail.create(name: "Daiquiri")
@tom = Cocktail.create(name: "Tom Collins")


Dose.create!(description: "5ml", cocktail: @moscow, ingredient_id: @mint.id)
Dose.create!(description: "10ml", cocktail: @bloody, ingredient_id: @tomato.id)
Dose.create!(description: "15ml", cocktail: @screwdriver, ingredient_id: @orange.id)
Dose.create!(description: "20ml", cocktail: @mojito, ingredient_id: @vodka.id)
Dose.create!(description: "15ml", cocktail: @daiquiri, ingredient_id: @ice.id)
Dose.create!(description: "9ml", cocktail: @tom, ingredient_id: @ice.id)



puts "finished seeding"
