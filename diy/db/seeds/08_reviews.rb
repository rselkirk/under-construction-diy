
puts "Re-creating Reviews..."


Review.create!(
  content: Faker::Hipster.paragraph(3),
  time: 3,
  cost: 3,
  project_id: 2,
  user_id: 1,
  rating:1
)

Review.create(
  content: Faker::Hipster.paragraph(3),
  time: 1,
  cost: 3,
  project_id: 2,
  user_id: 1,
  rating:3
)

Review.create(
  content: Faker::Hipster.paragraph(2),
  time: 4,
  cost: 3,
  project_id: 2,
  user_id: 2,
  rating:4
)

Review.create(
  content: Faker::Hipster.paragraph(1),
  time: 7,
  cost: 3,
  project_id: 3,
  user_id: 1,
  rating:2
)

Review.create(
  content: Faker::Hipster.paragraph(1),
  time: 4,
  cost: 3,
  project_id: 3,
  user_id: 2,
  rating:4
)

Review.create(
  content: Faker::Hipster.paragraph(1),
  time: 3,
  cost: 3,
  project_id: 3,
  user_id: 3,
  rating:5
)

100.times do |n|
  user_id = 3 + n
  projects = (1..103).to_a.shuffle
  content = Faker::Hipster.paragraph(1)
  proj_1 = projects.pop
  proj_2 = projects.pop
  proj_3 = projects.pop
  time_1 = rand(1...10)
  time_2 = rand(1...10)
  time_3 = rand(1...10)
  cost_1 = rand(10...200)
  cost_2 = rand(10...200)
  cost_3 = rand(10...200)
  rating_1 = rand(1...5)
  rating_2 = rand(1...5)
  rating_3 = rand(1...5)
    Review.create!(
      content: content,
      time: time_1,
      cost: cost_1,
      project_id: proj_1,
      user_id: user_id,
      rating: rating_1
    )
    Review.create!(
      content: content,
      time: time_2,
      cost: cost_2,
      project_id: proj_2,
      user_id: user_id,
      rating: rating_2
    )
    Review.create!(
      content: content,
      time: time_3,
      cost: cost_3,
      project_id: proj_3,
      user_id: user_id,
      rating: rating_3
    )
  end 