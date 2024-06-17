class UsersController < ApplicationController
  def show
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
