class LikesController < ApplicationController
    def index
        user = User.find(params[:user_id])
        likes = user.likes
        render json: likes 
    end
    def create
        like = Like.new(params_permit)
        if like.save
          render json: like
        else
          render json: like.errors.full_messages, status: :unprocessable_entity
        end
    end
    def destroy
        like = Like.find(params[:id])
        like.destroy
    end
    private
    def params_permit
        params.require(:like).permit(:liker_id,:likeable_id,:likeable_type)
    end
end