class PostsController < ApplicationController
  def index
    render 'posts/index'
  end
  
  def add
    render 'posts/create'
  end
end
