class ArtworksController < ApplicationController
    def index
        artworks = Artwork.all
        render json: artworks
    
    
      end
      def create
        artwork = Artwork.new(params_permit)
        if artwork.save
          render json: artwork
        else
          render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
      end
      def show
        artwork = Artwork.find(params[:id])
        render json: artwork
      end
      def update
        artwork = Artwork.find(params[:id])
        artwork.update(params_permit)
        render json: artwork
      end
      def destroy
        artwork = Artwork.find(params[:id])
        artwork.destroy
      end
      private
      def params_permit
        params.require(:artwork).permit(:title,:image_url,:artist_id)
      end
end