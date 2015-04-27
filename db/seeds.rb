# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create(:text => "This is test text 1",
            :lat => "39.3909764",
            :lon => "-76.6061574",
            :votes => "2",
)

Post.create(:text => "Test 2",
            :lat => "39.3909390",
            :lon => "-76.6061601",
            :votes => "1",
)



