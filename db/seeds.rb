# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all

user_1 = User.create!(email: ENV["USER_1_EMAIL"], password: ENV["PASSWORD"], username: ENV["USER_1_USERNAME"])
user_2 = User.create!(email: ENV["USER_2_EMAIL"], password: ENV["PASSWORD"], username: ENV["USER_2_USERNAME"])
admin_user = User.create!(email: ENV["ADMIN_EMAIL"], password: ENV["PASSWORD"], username: ENV["ADMIN_USERNAME"])

admin_user.add_role :admin
user_1.add_role :user
user_2.add_role :user


item_1 = Item.new(title: 'Abstract 1', description: '2020 collection', price: 500, category: 'Abstract', availability: true, user_id: user_1.id)
item_1.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/artwork_5.jpg')), filename:'artwork_5.jpg')
item_1.save


item_2 = Item.new(title: 'Abstract 2', description: '2020 collection', price: 500, category: 'Abstract', availability: true, user_id: user_2.id)
item_2.image.attach(io: File.open(File.join(Rails.root, 'app/assets/images/artwork_6.jpg')), filename:'artwork_6.jpg')
item_2.save

