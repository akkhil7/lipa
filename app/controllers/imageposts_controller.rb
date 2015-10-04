class ImagepostsController < ApplicationController
  before_action :authenticate
  def index
    @images = ImagePost.all
    render json: @images, status: 200
  end
end
