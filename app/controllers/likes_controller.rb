class LikesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
  end

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.build(bookmark: @bookmark)
    if like.save
      redirect_to bookmarks_path
    else
      redirect_to bookmarks_path
      flash[:notice] = "Error, please try again."
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:bookmark_id])
    like = current_user.likes.find(params[:id])
    if like.destroy
      redirect_to bookmarks_path
    else
      redirect_to bookmarks_path
      flash[:notice] = "Error, please try again"
    end
  end



  def liked(bookmark)
    likes.where(bookmark_id: bookmark.id).first
  end
end
