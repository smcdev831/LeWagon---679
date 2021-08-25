require "faker"

puts 'Creating 100 fake posts...'
100.times do
  post = Post.new(
    name: Faker::Company.name,
    url: "#{Faker::Address.city} + '.com'",
    votes: rand(0..500)
  )
  post.save!
end
puts 'Finished!'
