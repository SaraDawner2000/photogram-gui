class PhotosController < ApplicationController
  def show
  end

  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def create
  end

  def update
  end

  def destroy
  end

end
