class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    render :index # renders app/views/posts/index.html.erb
  end

  def new
    @post = Post.new
    render :new # renders app/views/posts/new.html.erb
  end

  def create
    @post = Post.new(post_params)

    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end

    if @post.save
      redirect_to index_posts_path, notice: '投稿しました' # redirects to GET "/posts"
    else
      render :new, status: :unprocessable_entity # renders app/views/posts/new.html.erb
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
