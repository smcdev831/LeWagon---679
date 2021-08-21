class Post
  class Post
    attr_reader :id
    attr_accessor :title, :url, :votes

    def initialize(properties = {})
      @id = properties[:id]
      @title = properties[:title]
      @url = properties[:url]
      @votes = properties[:votes] || 0
    end

    def self.build_record(attributes)
      post_attributes = {
        id: attributes["id"],
        title: attributes["title"],
        url: attributes["url"],
        votes: attributes['votes']
      }
      Post.new(post_attributes)
    end

    def self.find(id)
      DB.results_as_hash = true
      query_attributes = DB.execute("SELECT * FROM posts WHERE id = ?", id).first
      build_record(query_attributes) if query_attributes
    end

    def self.all
      DB.results_as_hash = true
      if ::DB.execute("SELECT * FROM posts").empty?
        []
      else
        ::DB.execute("SELECT * FROM posts").map do |post|
          build_record(post)
        end
      end
    end

    def save
      if @id.nil?
        DB.execute("INSERT INTO posts (title, url, votes) VALUES (?, ?, ?)", @title, @url, @votes)
        @id = DB.last_insert_row_id
      else
        DB.execute("UPDATE posts SET title == ?, url == ?, votes == ? WHERE id == ?", @title, @url, @votes, @id)
      end
    end

    def destroy
      DB.execute("DELETE FROM posts WHERE id = #{id}")
    end
  end
end
