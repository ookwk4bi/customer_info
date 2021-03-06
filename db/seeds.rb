# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do |comment|
  Comment.create(body: "#{comment}回目のコメントです。",
customer_id: rand(100) + 1,
user_id: rand(3) + 1)
end

100.times do |index|
    Customer.create(
      family_name: Faker::Japanese::Name.last_name,
      given_name: Faker::Japanese::Name.first_name,
      detail: "クレーマー対応注意！！",
      account_number: '12345678'
    )
  end
