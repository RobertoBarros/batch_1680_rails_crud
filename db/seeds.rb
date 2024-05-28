10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.full_address, rating: rand(1..10))
end
