# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Reader.create(
        email: Faker::Internet.free_email, 
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        dob: Faker::Date.birthday(18, 95), 
        phone: Faker::PhoneNumber.phone_number.gsub('.', ''), 
        address_line1: Faker::Address.street_address, 
        address_line2: Faker::Address.secondary_address, 
        city: Faker::Address.city, 
        state: Faker::Address.state_abbr, 
        zip: Faker::Address.zip.first(5))
end



10.times do
    Book.create(
      author: Faker::Book.author,
      title: Faker::Book.title,
      published_on: Faker::Date.birthday(0, 100),
      publisher: Faker::Book.publisher,
      language: Faker::Demographic.demonym,
      binding_format: Faker::Number.between(0, 1),
      isbn: Faker::Number.number(13),
      price: Faker::Commerce.price,
      dewey_code: Faker::Number.number(8))
end