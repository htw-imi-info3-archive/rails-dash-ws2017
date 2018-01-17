# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)

def clean_database
  LineItem.destroy_all
  Order.destroy_all
  Customer.destroy_all
  Pumpkin.destroy_all
end

def statistics
  puts "#{Pumpkin.count} Pumpkins, #{Customer.count} Customers and #{Order.count} Orders with #{LineItem.count} LineItems are now in the Database."
end

puts 'deleting all records'
clean_database
puts 'seeding database:'
seed_files = Dir[File.join('db', 'seeds', '*.rb')].sort
seed_files.each do |seed_file|
  puts "loading #{seed_file}"
  load seed_file
end
statistics
