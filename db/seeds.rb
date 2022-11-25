# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

puts "Cleaning database"
Booking.destroy_all
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
user3 = User.create(
  email: "georgegloyens@gmail.com",
  password: "password"
)


# 10.times do
#   planet = Planet.create!(
#     name: Faker::Space.star_cluster,
#     description: Faker::Fantasy::Tolkien.poem,
#     size: Faker::Space.distance_measurement,
#     image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['planet']),
#     population: Faker::Number.between(from: 1, to: 100000000),
#     price: Faker::Commerce.price(range: 0..100000.0, as_string: true),
#     rating: Faker::Number.between(from: 1, to: 5),
#     user: [user1, user2].sample
#   )
#   puts "Planet with id: #{planet.id} has been created"
# end

# puts "Finished!"

planet1 = Planet.create!(
  name: "Solano",
  description: "The air on Solano has a rainbow swirl, as if bright inks were dropped into a current with precision. On the skin it felt as silk on a hot day, cool and smooth. It eddied around fingers as if it were water in some magic wishing well.",
  size: "36,184mi (58,232km) radius; 9x larger than Earth",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-INorXYOaklWM9R8ivQ28WYan/generations/generation-7VWBwiQthVt6wCvVF0UsCszL/image.webp",
  population: 100_000_000,
  price: 800_813_5,
  rating: 5,
  user: [user1, user2, user3].sample
)

planet3 = Planet.create!(
  name: "Wagonia",
  description: "This planet is where the Le Wagon coding bootcamp is located. It is a planet of 100% coding students. You can find the best developers in the Milky Way here.",
  size: "Kirkland Road, London, UK",
  image_url: "https://slack-imgs.com/?c=1&o1=ro&url=https%3A%2F%2Fi.imgur.com%2FIxIVHxj.png",
  population: 150,
  price: 6500,
  rating: 5,
  user: [user1, user2, user3].sample
)

planet3 = Planet.create!(
  name: "Gear World",
  description: "The planet of Gear World is covered in a metallic mechanical surface, suggesting that the whole planet might have been artificially created. Gear People primarily live in societies with others of their own kind, often in towns or cities.",
  size: "15,299mi (24,622km) radius",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-GvMno2XpbjpoYyY8v1AyRjWT/generations/generation-z1g0X83KHWTjRViFAQ2qmSnG/image.webp",
  population: 200_500_000,
  price: 200_00,
  rating: 3,
  user: [user1, user2, user3].sample
)

planet4 = Planet.create!(
  name: "Screaming Sun Earth  ",
  description: "The Screaming Sun Earth is one of 765 planets in the Milky Way that are at least 90 percent similar to Earth. Of those planets, it is one of three not under federal jurisdiction.",
  size: "15,299mi (24,622km) radius",
  image_url: "https://i.kym-cdn.com/entries/icons/facebook/000/019/180/ezgif-2198194681.jpg",
  population: 200_00,
  price: 420_69,
  rating: 3,
  user: [user1, user2, user3].sample
)

planet5 = Planet.create!(
  name: "Alphabetrium",
  description: "Alphabetrium is a faraway realm inhabited by an ancient race who resemble giant letters of various alphabets. It's ruled by a council, which consists of Helium-Q, Magnesium-J, and Hydrogen-F.[",
  size: "8500mi (15,000km) radius",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-INorXYOaklWM9R8ivQ28WYan/generations/generation-2b3vQm29EMJYNVG3OjDMgkpW/image.webp",
  population: 200_500_000,
  price: 14500,
  rating: 4,
  user: [user1, user2, user3].sample
)

planet6 = Planet.create!(
  name: "Pluto",
  description: "Pluto is a dwarf planet located in Earth's solar system. inhabited by sentient Plutonians.",
  size: "1188.3 km radius",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-INorXYOaklWM9R8ivQ28WYan/generations/generation-LfaMNhVfHDaotOIatNHNTiVh/image.webp",
  population: 999_999_999,
  price: 999_999,
  rating: 5,
  user: [user1, user2, user3].sample
)

planet7 = Planet.create!(
  name: "Snake Planet",
  description: "Snake Planet is a planet in the Replacement dimension. It is inhabited by sapient Snakes, which were later reverted out of existence after the snakes started thoughtlessly meddling with time travel technology.",
  size: "HISS",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-GvMno2XpbjpoYyY8v1AyRjWT/generations/generation-yAE6ApYWCCt1nKvSM7tGxwTI/image.webp",
  population: 150,
  price: 67809,
  rating: 2,
  user: [user1, user2, user3].sample
)

planet8 = Planet.create!(
  name: "Network 9",
  description: "A planet where people get along. Come join a network state on this planet. Inspired by the work of Balaji Srinivasan.",
  size: "15,000mi (24,622km) radius",
  image_url: "https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/1-planet-with-illuminated-network-allan-swart.jpg",
  population: 1000000,
  price: 150,
  rating: 5,
  user: [user1, user2, user3].sample
)

planet9 = Planet.create!(
  name: "Marconium",
  description: "The planet is home to Marco Ricci and his millions of descendants. The planet is a paradise, with a perfect climate, and a perfect ecosystem. The planet is also home to the most advanced technology in the galaxy.",
  size: "15,000mi (24,622km) radius",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-GvMno2XpbjpoYyY8v1AyRjWT/generations/generation-DvKGqM4pq6rxgVXIddf9McG1/image.webp",
  population: 200_500_000,
  price: 200_00,
  rating: 3,
  user: [user1, user2, user3].sample
)

planet10 = Planet.create!(
  name: "Bitcoin Planet",
  description: "Gold was defeated by the state. It's too easily seized. Fiat thus triumphed over the course of the 20th century. But BTC is the v3, combining some of the advantages of both, while adding wholly new ones.",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-GvMno2XpbjpoYyY8v1AyRjWT/generations/generation-QtNqyK2Ue7GGTn0s1TSn6T6g/image.webp",
  population: 8000000,
  price: 13660,
  rating: 5,
  user: [user1, user2, user3].sample
)

planet10 = Planet.create!(
  name: "Gaia",
  description: "Visit Gaia at your risk. Not much is known about this planet or its inhabitants. It is said that the planet is filled with giant shapeshifting creatures.",
  size: "15,299mi (24,622km) radius",
  image_url: "https://openai-labs-public-images-prod.azureedge.net/user-GvMno2XpbjpoYyY8v1AyRjWT/generations/generation-zPZJ8dIL5rMF4TTWNMdDCExz/image.webp",
  population: 320000000,
  price: 200_00,
  rating: 3,
  user: [user1, user2, user3].sample
)

planet11 = Planet.create!(
  name: "Your Planet Here",
  description: "Come list your planet with us!",
  size: "",
  image_url: "https://77qr.io/themes/altum/assets/images/qr_code.svg",
  population: "",
  price: "Free",
  rating: 0,
  user: [user1, user2, user3].sample
)
