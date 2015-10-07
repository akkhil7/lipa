class ImagepostsController < ApplicationController
  before_action :authenticate
  def index
    @images = ImagePost.all
    render json: @images, status: 200
  end

  def create
    @image = ImagePost.new(imagepost_params)
    if @image.save!
      render json: @image, status: 200
    else
      render json: @image.errors, status: 422
    end
  end

  def destroy
    @image = ImagePost.find(params[:id])
    if @image.destroy!
      render text: "Image was deleted", status: 200
    else
      render status: 422
    end
  end

  private
    def imagepost_params
      params.require(:image).permit(:image, :user_id)
    end
end
