# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Planet.destroy_all
User.destroy_all

puts "Creating Planets"
user1 = User.create(
email: "michellemodest@google.com",
password: "password"
)
user2 = User.create(
email: "monikamodest@google.com",
password: "password"
)


10.times do
  planet = Planet.create!(
    name: Faker::Space.star_cluster,
    description: Faker::Fantasy::Tolkien.poem,
    size: Faker::Space.distance_measurement,
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['planet']),
    population: Faker::Number.between(from: 1, to: 100000000),
    price: Faker::Commerce.price(range: 0..100000.0, as_string: true),
    rating: Faker::Number.between(from: 1, to: 5),
    user: [user1, user2].sample
  )
  puts "Planet with id: #{planet.id} has been created"
end

puts "Finished!"
