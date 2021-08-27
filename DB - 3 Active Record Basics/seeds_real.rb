require 'json'
require 'rest-client'
top_stories = "https://hacker-news.firebaseio.com/v0/topstories.json"
def stories(id)
  "https://hacker-news.firebaseio.com/v0/item/#{id}.json"
end
posts_ids = JSON.parse(RestClient.get(top_stories))
posts_ids.take(10).each do |id|
  hacker_news_post = JSON.parse(RestClient.get(stories(id)))
  post = Post.new(
    title: hacker_news_post["title"],
    url: hacker_news_post["url"],
    votes: hacker_news_post["votes"]
  )
  post.save
  puts "[#{post.votes}] - #{post.title} - #{post.url}"
end
