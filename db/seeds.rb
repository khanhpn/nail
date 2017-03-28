# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |index|
  category = Category.create({name: "category_#{index}"})
  (1..100).each do |item|
    category.products.create({name: "product_#{item}", price: item, description: "This is description #{item}"})
  end
end