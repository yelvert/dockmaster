class ImagesController < ApplicationController
  # List containers
  def index
    @images = Docker::Image.all
  end
end