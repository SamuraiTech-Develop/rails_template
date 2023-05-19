class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to show_post_path(params[:post_id]), notice: '登録しました'
    else
      @post = Post.find(params[:post_id])
      @comments = Comment.where(post_id: params[:post_id])
      render 'posts/show', status: :unprocessable_entity
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:content).merge(post_id: params[:post_id])
  end
end
