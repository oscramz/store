# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.create([
    { description: 'Accepted' },
    { description: 'Rejected' },
    { description: 'Canceled' },
    { description: 'Delivered' },
    { description: 'Authorized' }
])
    puts "🥇 Statuses created!"

@categories = Category.create([
    { name: 'Technology' },
    { name: 'Cars' },
    { name: 'Home & Garden' },
    { name: 'Food' },
    { name: 'Entertainment' }
])
    puts "📚 Categories created!"

Role.create([
    { name: 'Admin' },
    { name: 'Client' }
])
    puts "🏹 Rols created!"

User.create([
    { username: 'admin', password: 'admin', password_confirmation: 'admin', role: Role.find_by(name: 'Admin') }
])
    puts "👨‍👩‍👧‍👧 Users created!"

25.times do
    Product.create(name: Faker::Food.dish, description: Faker::Food.description, price: rand(10000..50000), category: @categories.sample)
end
    puts "💾 Products created!"