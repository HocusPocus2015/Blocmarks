class IncomingController < ApplicationController

  # http://stackoverflow.com/questions/1177863/how-do-i-ignore-the-authenticity-token-for-specific-actions-in-rails
  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    # Find the user by using params[:sender]
    user = User.find_by(email: params['sender'])
    # Check if user is nil, if so, create and save a new user
    unless user
      head 400
      return
    end

    # Find the topic by using params[:subject]
    topic = Topic.find_or_create_by(title: params['subject'])

    # Now that you're sure you have a valid user and topic, build and save a new bookmark
    bookmark = Bookmark.new(url: params['body-plain'])
    bookmark.user = user
    bookmark.topic = topic
    bookmark.save

    head 200
  end
end
