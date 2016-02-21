class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    # @topic = Topic.find(params[:id])
    # @bookmarks = @topic.bookmarks
    # authorize @topic

    @topic = Topic.includes(:bookmarks).find(params[:id])
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
