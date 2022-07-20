# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create(number: "12345678", status: "ノーマル", point: "100")
Account.create(number: "87654321", status: "レギュラー", point: "200")
Account.create(number: "43215678", status: "プレジデント", point: "300")


100.times do |index|
    Customer.create(
      family_name: Faker::Japanese::Name.last_name,
      given_name: Faker::Japanese::Name.first_name,
      detail: "クレーマー対応注意！！",
      account_id: rand(3) + 1
    )
  end
