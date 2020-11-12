class PostsController < ApplicationController

  # before_action :authenticate_user!, only: %i[new create]



  def index; end



  def new

    @post = Post.new

  end



  def create

    @post = Post.new(posts_params)

    if @post.save

      redirect_to root_path

    else

      render :new

    end

  end



  def show; end



  def edit; end



  def update; end



  private



  def posts_params

    params.require(:post).permit(:title, :description)

  end

end

