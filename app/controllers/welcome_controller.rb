class WelcomeController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @user = User.find(params[:id])
    @bookmarks = @user.bookmarks
    @bookmark = Bookmark.find(params[:bookmark_id])
    @likes = @user.likes
  end

  def liked(bookmark)
    likes.where(bookmark_id: bookmark.id).first
  end
end
