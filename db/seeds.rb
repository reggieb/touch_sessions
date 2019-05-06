# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

{
  grid: 'Grid',
  game: 'Game',
  warmup: 'Warm up'
}.each do |tag, name|
  ActivityType.find_or_create_by(tag: tag) do |activity_type|
    activity_type.name = name
  end
end
