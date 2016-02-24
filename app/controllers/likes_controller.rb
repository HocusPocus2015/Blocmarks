class LikesController < ApplicationController

  def index
  end
  
  def new
  end

  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @like = Like.new
    @like.user = current_user
    @like.bookmark = @bookmark
    if @like.save
      redirect_to bookmarks_path , notice: "You liked it!"
    else
      redirect_to bookmarks_path , notice: "Error, please try again."
    end
  end

  def destroy
    @like = Like.find( params[:id] )
    if @like.destroy
      redirect_to bookmarks_path , notice: "You changed your mind."
    else
      redirect_to bookmarks_path , notice: "Error, please try again"
    end
  end
end
