class UsersController < ApplicationController
  def show
    id = params[:path_id]
    @user = User.where(id:).first
  end

  def index
    @users = User.all.order(:username)
  end

  def create
    @user = User.new
    @user.username = params[:query_username]
    if @user.valid?
      @user.save
      redirect_to "/users", notice: "User created successfully"
    else
      redirect_to "/users", notice: "User failed to create successfully"
    end
  end

  def update
  end

  def destroy
  end

end
