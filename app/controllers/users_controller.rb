class UsersController < ApplicationController
  def show
    id = params[:path_id]
    @user = User.where(id:).first
  end

  def index
    @users = User.all.order(:username)
  end

  def create
  end

  def update
  end

  def destroy
  end

end
