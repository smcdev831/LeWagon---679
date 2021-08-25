class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def ask_user_for(string)
    puts string.to_s
    print ">"
    gets.chomp
  end

  def display(posts)
    posts.each do |post|
      puts "#{post.id} - #{post.title}, #{post.url} (#{post.votes})"
    end
  end
end
