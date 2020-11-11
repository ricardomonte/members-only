class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index

  end

  def new
    @post = Post.new
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end
end
