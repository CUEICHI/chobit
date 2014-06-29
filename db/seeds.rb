# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  message = "ちょびったー #{i+1} 言目"
  next if Chobit.find_by_msg message
  Chobit.create(:msg =>message , :fav => :false)
  puts message
  sleep 2

end