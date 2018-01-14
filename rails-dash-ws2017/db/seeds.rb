# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

puts 'seeding database:'

seed_files = Dir[File.join('db', 'seeds', '*.rb')].sort
seed_files.each do |seed_file|
  puts "loading #{seed_file}"
  load seed_file
end
