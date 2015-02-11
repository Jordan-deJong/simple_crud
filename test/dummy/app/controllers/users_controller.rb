class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    create_ @user, users_path, :new
  end

  def edit
  end

  def update
    update_ @user, user_params, users_path
  end

  def destroy
    destroy_ @user, users_path
  end

  private

  def find_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:name)
  end

end
