# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bait.delete_all

fat_rap = Bait.create!(
  name: 'Fat Rap',
  category: 'Crankbait',
  image: 'fat-rap.png'
)

yummy_gummy = Bait.create!(
  name: 'Yummy Gummy',
  category: 'Softbait',
  image: 'yummy-gummy.png'
)

fire_tiger = Bait.create!(
  name: 'Fire Tiger',
  category: 'Spinner',
  image: 'fire-tiger.png'
)

mr_mustache = Bait.create!(
  name: 'Mr. Mustache',
  category: 'Popper',
  image: 'mr-mustache.png'
)

strike_king = Bait.create!(
  name: 'Strike King',
  category: 'Crankbait',
  image: 'strike-king.png'
)

rooster_tail = Bait.create!(
  name: 'Rooster Tail',
  category: 'Spinner',
  image: 'rooster-tail.png'
)

marabou_muddler = Bait.create!(
  name: 'Marabou Muddler',
  category: 'Fly',
  image: 'marabou-muddler.png'
)

bucktail = Bait.create!(
  name: 'Bucktail',
  category: 'Jig',
  image: 'bucktail.png'
)

daredevil = Bait.create!(
  name: 'Daredevil',
  category: 'Spoon',
  image: 'daredevil.png'
)

#
# USERS
#
User.delete_all

user1 = User.create!(
  username: 'user1',
  password: 'secret'
)

user2 = User.create!(
  username: 'user2',
  password: 'secret'
)

#
# TACKLE BOX ITEMS
#

TackleBoxItem.delete_all

TackleBoxItem.create!([
  {
    bait: marabou_muddler,
    user: user1
  },
  {
    bait: bucktail,
    user: user1
  },
  {
    bait: yummy_gummy,
    user: user1
  },
  {
    bait: fire_tiger,
    user: user1
  },
  {
    bait: rooster_tail,
    user: user1
  },
  {
    bait: marabou_muddler,
    user: user2
  },
  {
    bait: bucktail,
    user: user2
  },
  {
    bait: strike_king,
    user: user2
  },
  {
    bait: mr_mustache,
    user: user2
  },
])

#
# CATCHES
#

Catch.delete_all

Catch.create!([
  {
    species: 'Walleye',
    weight: 4.0,
    length: 21.0,
    created_at: 2.days.ago,
    bait: rooster_tail,
    user: user1
  },
  {
    species: 'Brown Trout',
    weight: 5.25,
    length: 22.5,
    created_at: 3.days.ago,
    bait: rooster_tail,
    user: user1
  },
  {
    species: 'Largemouth Bass',
    weight: 4.25,
    length: 18.5,
    created_at: 3.days.ago,
    bait: yummy_gummy,
    user: user1
  },
  {
    species: "Rainbow Trout",
    weight: 3.5,
    length: 18.5,
    created_at: 4.days.ago,
    bait: rooster_tail,
    user: user1
  },
  {
    species: "Walleye",
    weight: 4.5,
    length: 22.5,
    created_at: 1.days.ago,
    bait: fire_tiger,
    user: user1
  },
  {
    species: 'Walleye',
    weight: 3.0,
    length: 18.0,
    created_at: 3.days.ago,
    bait: fire_tiger,
    user: user1
  },
  {
    species: 'Lake Trout',
    weight: 5.5,
    length: 24.0,
    created_at: 5.days.ago,
    bait: fire_tiger,
    user: user1
  },
  {
    species: 'Walleye',
    weight: 3.5,
    length: 19.0,
    created_at: 7.days.ago,
    bait: fire_tiger,
    user: user1
  },
    {
    species: "Largemouth Bass",
    weight: 3.0,
    length: 18.0,
    created_at: 4.days.ago,
    bait: mr_mustache,
    user: user2
  },
  {
    species: 'Rainbow Trout',
    weight: 2.5,
    length: 16.5,
    created_at: 3.days.ago,
    bait: strike_king,
    user: user2
  },
  {
    species: 'Brown Trout',
    weight: 4.25,
    length: 22.0,
    created_at: 6.days.ago,
    bait: marabou_muddler,
    user: user2
  },
  {
    species: 'Smallmouth Bass',
    weight: 3.25,
    length: 14.0,
    created_at: 8.days.ago,
    bait: bucktail,
    user: user2
  },
])
