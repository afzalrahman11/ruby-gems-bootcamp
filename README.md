# README

Gem-faker : To create some fake db



### How to install
// Gemfile
gem 'faker'
 
// seeds.rb
30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote
  }])
end
 
// Console
bundle
rails db:seed
