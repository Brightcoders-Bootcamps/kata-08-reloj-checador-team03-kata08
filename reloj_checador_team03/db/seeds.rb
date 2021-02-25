# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'edson@fooapp.com'
user.password = 'test2021#'
user.name = 'efooapp'
user.lastname = 'Edson'
user.username = 'Edson'
user.password_confirmation = 'test2021#'
user.save!

user = User.new
user.email = 'moceguera@fooapp.com'
user.password = 'test2021#'
user.name = 'moceguera'
user.lastname = 'Oceguera'
user.username = 'Miguel'
user.password_confirmation = 'test2021#'
user.save!

user = User.new
user.email = 'rferreira@fooapp.com'
user.password = 'test2021#'
user.name = 'rferreira'
user.lastname = 'Ferreira'
user.username = 'Raul'
user.password_confirmation = 'test2021#'
user.save!

user = User.new
user.email = 'test@fooapp.com'
user.password = 'test2021#'
user.name = 'test'
user.lastname = 'test'
user.username = 'test'
user.password_confirmation = 'test2021#'
user.save!