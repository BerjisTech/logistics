# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating users'
puts Mtu.create!(email: 'bo.kouru@gmail.com', password: 'password', password_confirmation: 'password', admin: true,
            superadmin: true, active: true, banned: false, suspended: false, deleted: false, verified: true)
10.times do
  puts Mtu.create!(email: Faker::Internet.email, password: 'password', password_confirmation: 'password', admin: false,
              superadmin: false, active: true, banned: false, suspended: false, deleted: false, verified: true)
end
puts Mtu.count
