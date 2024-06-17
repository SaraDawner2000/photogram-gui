class PhotosController < ApplicationController
  def show
    id = params[:path_id]
    @photo = Photo.where(id:).first
  end

  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def create
    @photo = Photo.new
    @photo.image = params[:query_image_url]
    @photo.caption = params[:query_caption]
    @photo.owner_id = params[:query_owner_id]

    if @photo.valid?
      @photo.save
      redirect_to "/photos/#{@photo.id}", notice: "Photo posted successfully"
    else
      redirect_to "/photos", alert: "Photo failed to post successfully"
    end
  end

  def update
    id = params[:path_id]
    @photo = Photo.where(id:).first

    @photo.image = params[:query_image_url]
    @photo.caption = params[:query_caption]

    if @photo.valid?
      @photo.save
      redirect_to "/photos/#{@photo.id}", notice: "Photo updated successfully"
    else
      redirect_to "/photos/#{@photo.id}", alert: "Photo failed to update successfully"
    end
  end

  def destroy
    id = params[:path_id]
    @photo = Photo.where(id:).first

    @photo.destroy

    redirect_to "/photos", notice: "Photo deleted successfully"
  end

  def create_comment
    @comment = Comment.new
    @comment.photo_id = params[:query_photo_id]
    @comment.author_id = params[:query_author_id]
    @comment.body = params[:query_body]

    if @comment.valid?
      @comment.save
      redirect_to "/photos/#{@comment.photo_id}", notice: "Comment created successfully"
    else
      redirect_to "/photos/#{@comment.photo_id}", notice: "Comment failed to create successfully"
    end
  end
end
