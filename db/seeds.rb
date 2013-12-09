# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create( :title => 'First Project', :summary => 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', :location => 'Saint Stephens Green, Dublin', :longitude => '-6.259765', :latitude => '53.336898', :target_date =>'2013-12-09')
Project.create( :title => 'Second Project', :summary => 'Blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt.', :location => 'Temple Bar, Dublin', :longitude => '-6.263803', :latitude => '53.345090', :target_date =>'2013-12-20')

puts "seeds working"