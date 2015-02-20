# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Meet::DEFAULT_EVENT_NAMES.each_with_index do |event_name, index|
  Event.create( { name: event_name, sort_order: index } )
end
