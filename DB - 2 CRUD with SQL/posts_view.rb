class PostsView
  def list(posts)
    posts.each do |post|
      puts "ID: #{post.id} NAME: #{post.title} URL: #{post.url} VOTES: #{post.votes}"
    end
  end

  def add_to_db
    puts 'What is the title of the post you would like to add?'
    print '> '
    answer_one = gets.chomp
    puts 'Please provide the URL for this post'
    print '> '
    answer_two = gets.chomp
    { title: answer_one, url: answer_two }
  end

  def update_the_db
    puts "Which post would you like to update?"
    answer_three = gets.chomp
    { id: answer_three }
  end

  def destroy_from_db
    puts "Which post would you like to remove?"
    answer_four = gets.chomp
    { id: answer_four }
  end

  def upvote
    puts "Updoot?"
    answer_five = gets.chomp
    { id: answer_five }
  end
end
