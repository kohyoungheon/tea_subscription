# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TeaSub.destroy_all
CustomerSub.destroy_all
Customer.destroy_all
Subscription.destroy_all
Tea.destroy_all


10.times do

  tea = Tea.create(
    title: Faker::Tea.variety,
    description: Faker::Tea.type,
    temperature: Faker::Number.between(from: 100, to: 212),
    brew_time: Faker::Number.between(from: 300, to: 600)
  )

  subsciption = Subscription.create(
    title: "Tea Subscribtion #{Faker::Number.number(digits: 2)}",
    price: Faker::Number.decimal(l_digits: 2),
    status: Faker::Number.between(from: 0, to: 3),
    frequency: Faker::Number.between(from: 0, to: 2)
  )

  customer = Customer.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    address: Faker::Address.full_address
  )

  customer_sub = CustomerSub.create(
    customer_id: customer.id,
    subscription_id: subsciption.id
  )

  tea_sub = TeaSub.create(
    tea_id: tea.id,
    subscription_id: subsciption.id
  )
end