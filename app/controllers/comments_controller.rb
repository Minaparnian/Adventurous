class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create comment_params
    @comment.update :image_id => params[:image_id]
    @current_user.comments << @comment
    redirect_to image_path(params[:image_id])

  end

  def update
    comment = Comment.find params[:id]
    comment.update comment_params
    redirect_to new_comment_path

  end

    # def destroy
    #   comment = Comment.find.user params[:id]
    #   Comment.destroy comment.id
    #   redirect_to new_comment_path
    # end

  private
  def comment_params
    params.require(:comment).permit(:content, :image_id)
  end
end
