# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


i = 0 
@csa = ["Jeb's Harvest", "Sunset Hill", "Orchards of Apples", "Planet Vegetable", "Fortunate Son", "Hogs of Heaven", "The People's Broccoli", "Bean Pole Barns", "Greens are Good", "Hens and Hogs", "Kale and Sons", "Nothin' Fresher", "Old Macdonald", "Summer Harvest", "Blue Ribbon Gourds", "Honey Bee Honey", "Get off my Land", "Gaya is Everywhere", "Silver Sky Ranch", "This is A Drug Front"]

@csa_zip_code = [10022, 10024, 10001, 10024, 10001, 10014, 10016, 10035, 10038, 10038, 10034, 10033, 10039, 10022, 10010, 10024, 10024, 10035, 10035, 10035]

20.times do 
  i += 1
  user1=User.create({
    email: "fakeemail#{i}@gmail.com",
    password: "eieioeieio"
    })



  CommunityShare.create({
    name: @csa.pop,
    address: "Somewhere in New York",
    blurb: "A great place for summer fresh vegetables",
    user_id: user1.id,
    zip_code: @csa_zip_code.pop,
    city: "New York",
    state: "New York"
    })
end

@vegetables = ["Asparagus", "Cabbage", "Kale", "Pea", "Spinach", "Broad Bean", "Collard", "Kholarabi", "Radish", "Broccoli", "Garlic", "Leek", "Rhubarb", "Brussels Sprouts", "HorseRadish", "Onion", "Shallot", "Beets", "Carrots", "Potato", "Lettuce", "Celery", "Swiss Chard", "Sweet Corn", "Sweet Potato", "Tomato", "Snap Beans", "Eggplant", "Watermelon"]

i = 0
1001.times do
  i += 1
  User.all.sample.community_share.vegetables.create({
    name: @vegetables.sample,
    blurb: "Great for..."
  })
end

