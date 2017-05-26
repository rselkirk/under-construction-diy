# PROJECT_TAGS

puts "Re-creating ProjectTags ..."

ProjectTag.create!(
   project_id: 2,
   tag_id:1
)

ProjectTag.create(
   project_id: 1,
   tag_id:3
)

ProjectTag.create(
  project_id: 1,
  tag_id:1
)

ProjectTag.create(
  project_id: 1,
  tag_id:2
)

ProjectTag.create(
  project_id: 2,
  tag_id:2
)

ProjectTag.create(
  project_id: 2,
  tag_id:1
)

ProjectTag.create(
  project_id: 3,
  tag_id:3
)
