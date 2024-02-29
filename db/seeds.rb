# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Creates an user
User.create!(name: "guest 1", email: "guest@gmail.com")

# Creates sample hotels
Hotel.create!(name: 'ITC Windsor Hotel', about: 'Lorem ipsum dolor sit amet, consectetur')
Hotel.create!(name: 'The Leela Palace', about: 'Lorem ipsum dolor sit amet, consectetur')
Hotel.create!(name: 'Hyatt Pune', about: 'Lorem ipsum dolor sit amet, consectetur')

Room.create!([{ name: 'Single', description: 'Single bed room for one person', price: 700 },
                  { name: 'Double', description: 'double bed room for 2 person', price: 1200 }])