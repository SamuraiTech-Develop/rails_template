class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = params[:title]
    if @title.present?
      @posts = Post.where('title LIKE ?', "%#{@title}%")
    else
      @posts = Post.all
    end
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
      redirect_to index_post_path, notice: '投稿しました' # redirects to GET "/posts"
    else
      render :new, status: :unprocessable_entity # renders app/views/posts/new.html.erb
    end
  end

  def edit
    @post = Post.find(params[:id])
    render :edit # renders app/views/posts/edit.html.erb
  end

  def update
    @post = Post.find(params[:id])
    if params[:post][:image]
      @post.image.attach(params[:post][:image])
    end
    if @post.update(post_params)
      redirect_to index_post_path, notice: '更新しました' # redirects to GET "/posts"
    else
      render :edit, status: :unprocessable_entity # renders app/views/posts/edit.html.erb
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to index_post_path, notice: '削除しました' # redirects to GET "/posts"
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
