# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do
  puts 'Destroying tables...'
  User.destroy_all
  Poll.destroy_all

  puts 'Resetting id sequences...'
  %w(users polls).each do |table_name|
    ApplicationRecord.connection.reset_pk_sequence!(table_name)
  end

  puts 'Creating seed data...'
  u1 = User.create!(username: 'Markov')
  p1 = Poll.create!(title: 'Cats Poll', author: u1)

  puts 'Done!'
end
