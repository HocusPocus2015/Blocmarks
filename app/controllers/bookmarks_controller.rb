class BookmarksController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
    @bookmarks = Bookmark.all
    @topics = Topic.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update_attributes(bookmark_params)
      redirect_to bookmarks_path
    else
      flash[:error] = "Error, please try again."
      render :back
    end
  end

  def create
    @topic = Topic.find_or_create_by(title: params[:bookmark][:topic])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.topic = @topic
    #@bookmark.user = current_user
    if @bookmark.save
      redirect_to bookmarks_path
      flash[:notice] = "Bookmark created!"
    else
      flash[:error] = "There was an error saving the bookmark. Please try again."
      render :new
    end
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
    @topic = Topic.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      # flash[:notice] = "Bookmark has been deleted."
      redirect_to :back
    else
      flash[:error] = "Error, please try again."
      redirect_to :back
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:url)
  end
end
