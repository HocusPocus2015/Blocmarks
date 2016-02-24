class WelcomeController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
end
