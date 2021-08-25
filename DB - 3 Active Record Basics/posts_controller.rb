require_relative "../views/posts_view"
require_relative "../models/post"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    posts = Post.all
    @view.display(posts)
  end

  def create
    title = @view.ask_user_for("title")
    url = @view.ask_user_for("url")
    votes = @view.ask_user_for("votes").to_i
    post = Post.new(title: title, url: url, votes: votes)
    post.save
  end

  def update
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find_by(id: id)
    title = @view.ask_user_for("new_title")
    url = @view.ask_user_for("new_url")
    votes = @view.ask_user_for("votes").to_i
    post = Post.update(title: title, url: url, votes: votes)
    post.save
  end

  def destroy
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find_by(id: id)
    post.destroy
  end

  def upvote
    index
    id = @view.ask_user_for("id").to_i
    post = Post.find_by(id: id)
    post.votes += 1
    post.save
  end
end
