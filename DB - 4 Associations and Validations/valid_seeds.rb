require "faker"
5.times do
  user = User.new(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email
  )
  user.save!
  10.times do
    post = Post.new(
      title: Faker::Lorem.sentence,
      url: Faker::Internet.url,
      votes: Faker::Number.between(1, 500)
    )
    post.user = user
    post.save!
  end
end
