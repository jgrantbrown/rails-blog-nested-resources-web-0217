class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to post_path(@comment.post_id)
  end

  def destroy
    @post= Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to_post_path(@post)
  end

private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id )
  end

end
