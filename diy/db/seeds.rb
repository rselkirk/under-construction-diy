# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

Comment.destroy_all
ProjectTag.destroy_all
ProjectUpload.destroy_all
ProjectStatus.destroy_all
Rating.destroy_all
Review.destroy_all
Project.destroy_all
ReviewUpload.destroy_all
User.destroy_all

# USERS

puts "Re-creating Users ..."

User.create!([{
  first_name: 'Rachel',
  last_name: 'S',
  email: 'rachel@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
}])

User.create!([{
  first_name: 'Roxanne',
  last_name: 'S',
  email: 'roxanne@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
}])

User.create!([{
  first_name: 'Markus',
  last_name: 'S',
  email: 'markus@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
}])

# PROJECTS

puts "Re-creating Projects ..."

Project.create!([{
  title: 'Rustic Park Bench',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(4),
  user_id: 1,
  cost: 75,
  time: 5,
  material: Faker::Hipster.paragraph(1),
  url: ''
 }])

Project.create([{
  title: 'Family Picnic Table',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(3),
  user_id: 2,
  cost: 100,
  time: 6,
  material: Faker::Hipster.paragraph(1),
  url: ''
 }])

Project.create([{
  title: 'Industrial Bookshelf',
  summary: Faker::Hipster.paragraph(1),
  instructions: Faker::Hipster.paragraph(5),
  user_id: 3,
  cost: 200,
  time: 3,
  material: Faker::Hipster.paragraph(1),
  url: ''
 }])


# TAGS

puts "Re-creating Tags ..."


tag1 = Tag.create!([{ name: 'woodworking'}])
tag2 = Tag.create!([{ name: 'outdoor'}])
tag2 = Tag.create!([{ name: 'furniture'}])

# ProjectTAGS

puts "Re-creating ProjectTags ..."

ProjectTag.create([{
   project_id: 2,
   tag_id:1
 }])

ProjectTag.create!([{
   project_id: 1,
   tag_id:3
 }])

ProjectTag.create([{
  project_id: 1,
  tag_id:1
}])

ProjectTag.create([{
  project_id: 1,
  tag_id:2
}])

ProjectTag.create([{
  project_id: 2,
  tag_id:2
}])

ProjectTag.create([{
  project_id: 2,
  tag_id:1
}])

ProjectTag.create([{
  project_id: 3,
  tag_id:3
}])

# USERSPROJECTS

puts "Re-creating ProjectStatuses ..."

ProjectStatus.create!([{
  user_id: 1,
  project_id:2,
  completes: true,
  saves: false
 }])

 ProjectStatus.create([{
  user_id: 1,
  project_id:2,
  completes: true,
  saves: true
 }])

 ProjectStatus.create([{
  user_id: 1,
  project_id:3,
  completes: true,
  saves: true
 }])

 ProjectStatus.create([{
  user_id: 2,
  project_id:3,
  completes: true,
  saves: true
 }])

 ProjectStatus.create([{
  user_id: 2,
  project_id:2,
  completes: true,
  saves: false
 }])

  ProjectStatus.create([{
  user_id: 3,
  project_id:1,
  completes: false,
  saves: true
 }])


puts "Re-creating Comments..."


Comment.create!([{
  content: Faker::Hipster.paragraph(3),
  user_id: 1,
  project_id: 2
}])

puts "Re-creating Rating..."

# RATING

Rating.destroy_all

Rating.create!([{
  rating: 2
}])

Rating.create([{
  rating: 3
}])

Rating.create([{
  rating: 1
}])

Rating.create([{
  rating: 4
}])
Rating.create([{
  rating: 1
}])

Rating.create([{
  rating: 3
}])

Rating.create([{
  rating: 2
}])

puts "Re-creating Reviews..."


Review.create!([{
  content: Faker::Hipster.paragraph(3),
  time: 3,
  cost: 3,
  project_id: 2,
  user_id: 1,
  rating_id:1
}])

Review.create([{
  content: Faker::Hipster.paragraph(2),
  time: 5,
  cost: 3,
  project_id: 1,
  user_id: 2,
  rating_id:2
}])

Review.create([{
  content: Faker::Hipster.paragraph(3),
  time: 1,
  cost: 3,
  project_id: 2,
  user_id: 1,
  rating_id:3
}])

Review.create([{
  content: Faker::Hipster.paragraph(2),
  time: 4,
  cost: 3,
  project_id: 2,
  user_id: 2,
  rating_id:4
}])

Review.create([{
  content: Faker::Hipster.paragraph(3),
  time: 7,
  cost: 3,
  project_id: 3,
  user_id: 1,
  rating_id:5
}])

Review.create([{
  content: Faker::Hipster.paragraph(2),
  time: 4,
  cost: 3,
  project_id: 3,
  user_id: 2,
  rating_id:6
}])

Review.create([{
  content: Faker::Hipster.paragraph(1),
  time: 3,
  cost: 3,
  project_id: 3,
  user_id: 3,
  rating_id:7
}])

puts "Re-creating ProjectUploads..."


# ProjectwUpload

ProjectUpload.create!([{
  image_url: open_asset('diy.jpg'),
  project_id: 2
}])

puts "Re-creating ReviewUploads..."

# REVIEWUPLOAD

ReviewUpload.create([{
  image_url: open_asset('diy.jpg'),
  review_id: 2
}])

puts "DONE!"