# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# 3.times do 
#   contact = Contact.new(
#     first_name: Faker::Name.unique.first_name,
#     last_name: Faker::Name.unique.last_name,
#     phone_number: Faker::PhoneNumber.unique.phone_number)
#   contact.save
# end


contact = Contact.new(first_name: "John", last_name: "Wick", phone_number: "222-222-2222"
  )
contact.save

contact = Contact.new(first_name: "Bruce", last_name: "Wayne", phone_number: "333-333-3333"
  )
contact.save

contact = Contact.new(first_name: "Clark", last_name: "Kent", phone_number: "444-444-4444"
  )
contact.save

