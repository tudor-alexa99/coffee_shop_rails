# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
admin = User.find_or_create_by(name: "Admin", email: "admin@gmail.com", password_digest: User.digest("password"), is_admin: true)
cart = Cart.find_or_create_by(user_id: admin.id)
# todo: Seed images
