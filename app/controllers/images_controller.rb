class ImagesController < ApplicationController
  # List containers
  def index
    @images = Image.all
  end

  def show
    @image = Image.find params[:id]
  end
end