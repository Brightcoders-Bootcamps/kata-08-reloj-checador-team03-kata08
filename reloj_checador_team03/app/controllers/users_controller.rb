class UsersController < ApplicationController
  before_action :set_user, only: %i[edit]

  def index
    @users = User.all.page(params[:page])
  end

  def search
    @users = User.search(params[:search]).page(params[:page])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
