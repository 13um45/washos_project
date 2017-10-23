# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#default packages
Package.create(
  [
    { name: 'Lavish', value: 2900 },
    { name: 'Reveal', value: 7900 },
    { name: 'Outright', value: 14900 }
  ]
)

Option.create(
  [
    { name: 'Wax', value: 4000 },
    { name: 'Leather conditioning', value: 3000 },
    { name: 'Pet Hair removal', value: 2000 },
    { name: 'Dress Plastic', value: 1500 },
    { name: 'Paint Buffing', value: 10000 }
  ]
)
