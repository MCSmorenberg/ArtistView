# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Song.destroy_all

  whitest_boy_alive = Artist.create({ name: "Whitest Boy Alive" })
  arctic_monkeys = Artist.create({ name: "Arctic Monkeys" })

Song.create({
  track: "Burning",
  artist: whitest_boy_alive
  })

Song.create({
  track: "Island",
  artist: whitest_boy_alive
  })

Song.create({
  track: "Do I Wanna Know?",
  artist: arctic_monkeys
  })

Song.create({
  track: "Arabella",
  artist: arctic_monkeys
  })
