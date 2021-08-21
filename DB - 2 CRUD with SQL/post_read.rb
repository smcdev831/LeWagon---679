class Post
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @votes = attributes[:votes]
    @title = attributes[:title]
    @url = attributes[:url] || 0
  end

  def self.find(id)
    DB.results_as_hash = true
    found = DB.execute("SELECT * FROM posts WHERE id = ?", id).first
    Post.new(id: found["id"], title: found["title"], url: found["url"], votes: found["votes"]) if found
  end

  def self.all
    found = DB.execute('SELECT * FROM posts')
    found.map do |posting|
      Post.new(
        id: posting["id"],
        title: posting["title"],
        url: posting["url"],
        votes: posting["votes"]
      )
    end
  end
end
