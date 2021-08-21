require 'sqlite3'

class Post
  attr_reader :id, :votes
  attr_accessor :title, :url

  def initialize(attributes = {})
    @title = attributes[:title]
    @id = attributes[:id]
    @url = attributes[:url]
    @votes = attributes[:votes] || 0
  end

  def self.all
    DB.results_as_hash = true
    DB.execute("SELECT * FROM posts").map do |values|
      attributes = {
        id: values["id"],
        title: values["title"],
        url: values["url"],
        votes: values["votes"]
      }
      post = Post.new(attributes)
    end

    def self.find
      DB.execute()
    end
  end
end
