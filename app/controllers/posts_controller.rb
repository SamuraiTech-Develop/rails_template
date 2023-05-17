class PostsController < ApplicationController
  def index
    render 'posts/index'
  end

  def add
    render 'posts/create'
  end

  def store
    redirect_to index_post_path
  end
end
