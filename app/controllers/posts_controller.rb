class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(posts_params)
    redirect_to root_path if @post.save
  end

  def show; end

  def edit; end

  def update; end

  private

  def posts_params
    params.require(:post).permit(:title, :description, :user_id)
  end
end
