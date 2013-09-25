class ContainersController < ApplicationController
  # List containers
  def index
    @containers = Docker::Container.all
  end
end