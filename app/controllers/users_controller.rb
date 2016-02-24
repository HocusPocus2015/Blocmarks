class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @bookmarks = @user.bookmarks
    @likes = @user.likes
  end
end
