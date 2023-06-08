class CommentsController < ApplicationController
  def index
    if !params.has_key?(:artwork_id)
      user = User.find(params[:user_id])
      comments = user.comments
    else
      artwork = Artwork.find(params[:artwork_id])
      comments = artwork.comments
    end
    render json: comments
  end
  def destroy
    comment = comment.find(params[:id])
    comment.destroy
  end

  def create
    comment = Comment.new(params_permit)
    if comment.save
      render json: comment
    else
      render json:  comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def params_permit
    params.require(:comment).permit(:body,:author_id,:artwork_id)
  end
end
