class ImagepostsController < ApplicationController
  skip_before_action :verify_authenticity_token
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

  def current_images
    @user = User.find(params[:id])
    @images = @user.image_posts
    if(!@user.nil?)
      render json: @images, status: 200
    else
      render text: "No user found", status: 422
    end
  end

  private
    def imagepost_params
      params.require(:imagepost).permit(:image, :user_id)
    end
end
