# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
Product.destroy_all

20.times.each do
  Product.create({
    name: "Ergonomic Copper Computer",
    description: "Officia voluptas a maiores aut. Esse et at voluptate et illum illo qui.",
    price: 93.03,
    image: "http://lorempixel.com/400/500/technics/3"
  })
end
