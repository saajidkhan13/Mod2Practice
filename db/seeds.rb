# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.create(name: "Smackdown", roster: 88)
Brand.create(name: "Raw", roster: 96)
Brand.create(name: "ECW", roster: 45)

Wrestler.create(name: "Stone Cold Steve Austin", weight: 225, champion: true, brand_id: Brand.all.sample.id)
Wrestler.create(name: "The Rock", weight: 250, champion: true, brand_id: Brand.all.sample.id)
Wrestler.create(name: "Triple HHH", weight: 230, champion: false, brand_id: Brand.all.sample.id)
Wrestler.create(name: "Undertaker", weight: 270, champion: false, brand_id: Brand.all.sample.id)
