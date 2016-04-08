class TopicsController < ApplicationController
  before_action :authenticate_user!
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.includes(:bookmarks).find(params[:id])
    @bookmarks = @topic.bookmarks
  end

  def new
  end

  def edit
  end

  private
  def topic_params
    params.require(:topic).permit(:user_id, :title)
  end

end
