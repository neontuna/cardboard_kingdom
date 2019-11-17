# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create(
  {
    title: 'Gloomhaven',
    description: 'Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world. ',
    price_cents: 9999
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/gloomhaven.jpg"), filename: "gloomhaven.jpg")

Product.create(
  {
    title: 'Catan',
    description: 'Try to be the dominant force on the island of Catan by building settlements, cities, and roads.',
    price_cents: 4999
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/catan.jpg"), filename: "catan.jpg")

Product.create(
  {
    title: 'Pandemic',
    description: 'In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.',
    price_cents: 4999
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/pandemic.jpg"), filename: "pandemic.jpg")

Product.create(
  {
    title: 'Terraforming Mars',
    description: 'In the 2400s, mankind begins to terraform the planet Mars. Giant corporations, sponsored by the World Government on Earth, initiate huge projects to raise the temperature, the oxygen level, and the ocean coverage until the environment is habitable.',
    price_cents: 4500
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/terraforming_mars.jpg"), filename: "terraforming_mars.jpg")

Product.create(
  {
    title: 'Great Western Trail',
    description: 'America in the 19th century: You are a rancher and repeatedly herd your cattle from Texas to Kansas City, where you send them off by train.',
    price_cents: 6999
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/great_western_trail.jpg"), filename: "great_western_trail.jpg")

Product.create(
  {
    title: 'Spirit Island',
    description: 'In the most distant reaches of the world, magic still exists, embodied by spirits of the land, of the sky, and of every natural thing',
    price_cents: 4499
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/spirit_island.png"), filename: "spirit_island.png")

Product.create(
  {
    title: 'Azul',
    description: 'As a tile-laying artist, you have been challenged to embellish the walls of the Royal Palace of Evora.',
    price_cents: 2299
  }
).image.attach(io: File.open("#{Rails.root}/lib/assets/images/azul.jpg"), filename: "azul.jpg")
