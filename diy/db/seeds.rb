# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Ensuring ES indexes exist..."

Project.__elasticsearch__.create_index! force: true

puts "Destorying all then Seeding Data ..."

[Comment, ProjectUpload, ProjectStatus, Review, Project, ReviewUpload, User].each do |model_class|
  model_class.destroy_all
end





Comment.destroy_all
ProjectUpload.destroy_all
ProjectStatus.destroy_all
Review.destroy_all
Project.destroy_all
ReviewUpload.destroy_all
User.destroy_all


# load seeds from respective seed files
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }



puts "DONE!"