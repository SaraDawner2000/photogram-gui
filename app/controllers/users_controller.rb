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
      redirect_to "/users", alert: "User failed to create successfully"
    end
  end

  def update
    id = params[:path_id]
    @user = User.where(id:).first
    @user.username = params[:query_username]

    if @user.valid?
      @user.save
      redirect_to "/users/#{@user.id}", notice: "User updated successfully"
    else
      redirect_to "/users/#{@user.id}", alert: "User failed to update successfully"
    end
  end

  def destroy
    id = params[:path_id]
    @user = User.where(id:).first
    @user.destroy

    redirect_to "/users", notice: "User deleted successfully"
  end

end
