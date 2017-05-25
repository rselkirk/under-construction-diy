# USERS

puts "Re-creating Users ..."

# creates 3 users to use as test logins
User.create!(
  first_name: 'Rachel',
  last_name: 'S',
  email: 'rachel@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
)

User.create!(
  first_name: 'Roxanne',
  last_name: 'S',
  email: 'roxanne@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
)

# must be user 3 for other seeds to be correct
User.create!(
  first_name: 'Instructables',
  last_name: '.',
  email: 'instructables@email.com',
  password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau'
)

# creates 100 fake users
100.times do |n|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email
  User.create!(first_name: first_name,
    last_name: last_name,
    email: email,
    password_digest: '$2a$10$KMWUaL935DPYkkrC0i/lZ.lqu7uM0E6pWqAx.O3hZH3epcIGjpIau')
end 

