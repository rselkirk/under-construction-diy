# PROJECT_STATUSES

puts "Re-creating ProjectStatuses ..."

ProjectStatus.create!(
  user_id: 1,
  project_id:1,
  completes: true,
  saves: false
)

 ProjectStatus.create(
  user_id: 1,
  project_id:2,
  completes: true,
  saves: true
)

 ProjectStatus.create(
  user_id: 1,
  project_id:3,
  completes: true,
  saves: true
)

 ProjectStatus.create(
  user_id: 2,
  project_id:3,
  completes: true,
  saves: true
)

 ProjectStatus.create(
  user_id: 2,
  project_id:2,
  completes: true,
  saves: false
)

  ProjectStatus.create(
  user_id: 3,
  project_id:1,
  completes: false,
  saves: true
)

100.times do |n|
  user_id = 3 + n
  projects = (1..103).to_a.shuffle
  proj_1 = projects.pop
  proj_2 = projects.pop
  proj_3 = projects.pop
  completes = [true, false].sample ,
  saves = [true, false].sample
    ProjectStatus.create!(
      user_id: user_id,
      project_id: proj_1,
      completes: completes,
      saves: saves)
    ProjectStatus.create!(
      user_id: user_id,
      project_id: proj_2,
      completes: completes,
      saves: saves)
    ProjectStatus.create!(
      user_id: user_id,
      project_id: proj_3,
      completes: completes,
      saves: saves)
end
