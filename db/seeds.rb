# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  restaurant = Restaurant.new(
    name: Faker::SiliconValley.company,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  restaurant.save!
end

20.times do
  review = Review.new(
    content: Faker::Lorem.paragraph,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant_id: (1..20).to_a.sample
  )
  review.save!
end
