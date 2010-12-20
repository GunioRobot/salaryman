# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Default Topics:
Topic.destroy_all
%w[Japan Travel Hacking Music Robots Animal\ Pictures Trains].each do |topic_name|
  Topic.create!(:name => topic_name)
end
