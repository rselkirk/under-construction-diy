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

# PROJECTS

puts "Re-creating Projects ..."

Project.create!([{
  title: 'Create a picnic table',
  summary: Faker::Hipster.paragraph(3),
  instructions: Faker::Hipster.paragraph(4),
  origin: true,
  user_id: 1
 }])

Project.create!([{
  title: 'Create a picnic table',
  summary: Faker::Hipster.paragraph(3),
  instructions: Faker::Hipster.paragraph(4),
  origin: true,
  user_id: 1
 }])

# TAGS

puts "Re-creating Tags ..."

tag1 = Tag.create!([{ name: 'woodworking'}])
tag2 = Tag.create!([{ name: 'coding'}])

# ProjectTAGS

puts "Re-creating ProjectTags ..."

ProjectTag.create([{
   project_id: 2,
   tag_id:1
 }])

ProjectTag.create([{
  project_id: 2,
  tag_id:2
}])

# USERSPROJECTS

puts "Re-creating UserProjects ..."

UserProject.create!([{
  user_id: 1,
  project_id:2,
  completes: true,
  saves: false
 }])


puts "Re-creating Comments..."

Comment.create([{
  content: Faker::Hipster.paragraph(3),
  user_id: 1,
  project_id: 2
}])

puts "Re-creating Rating..."

# RATING

Rating.create([{
  rating: 4
}])

puts "Re-creating Reviews..."

Review.create([{
  content: Faker::Hipster.paragraph(3),
  time: 3,
  cost: 3,
  project_id: 2,
  user_id: 1,
  rating_id:1
}])

puts "Re-creating ProjectUploads..."

# ProjectwUpload

ProjectUpload.create([{
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