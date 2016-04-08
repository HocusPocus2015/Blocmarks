class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @bookmarks = @user.bookmarks
    @likes = @user.likes
  end
end
