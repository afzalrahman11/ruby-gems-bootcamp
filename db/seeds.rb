User.create!(email: 'admin@example.com', password: 'password@123', password_confirmation: 'password@123')

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
  }])
end