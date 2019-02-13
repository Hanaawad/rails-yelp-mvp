require 'faker'
puts 'Creating 10 fake restaurant...'
8.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
  review = Review.new(
    content: Faker::Restaurant.review
  )
  review.save!
end
