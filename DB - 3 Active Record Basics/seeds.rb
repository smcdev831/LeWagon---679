require "faker"

puts 'Creating 100 fake posts...'
100.times do
  post = Post.new(
    title: Faker::Lorem.sentence,
    url: Faker::Internet.url,
    votes: Faker::Number.between(1, 500)
  )
  post.save!
end

puts 'Ya done son!'
