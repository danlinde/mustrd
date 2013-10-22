# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create([{ name: 'iPhone', description: 'Not just a phone.', quantity: 10, price: 599.90 },
						   { name: 'cuddly bear', description: 'soft and sweet', quantity: 5, price: 25.00 },
						   { name: 'Goldfish', description: 'orange and wet (preferably)', quantity: 15, price: 30.00 },
						   { name: 'Air rifle', description: 'tiny and does not work', quantity: 4, price: 8.00 },
						   { name: 'Original watercolour', description: 'wishy washy but evocative', quantity: 1, price: 3500.00 }])