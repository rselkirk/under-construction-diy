puts "Re-creating Comments..."


Comment.create!(
  content: Faker::Hipster.paragraph(3),
  user_id: 1,
  project_id: 2
)
