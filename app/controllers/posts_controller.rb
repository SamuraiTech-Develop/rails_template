class PostsController < ApplicationController
  def index
    render 'posts/index'
  end

  def add
    render 'posts/create'
  end

  def store
    @post = Post.new(post_params)
    
    if @post.save
      flash[:notice] = '登録しました'
      redirect_to index_post_path
    else
      render :add
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end

end
