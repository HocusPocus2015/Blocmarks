class BookmarkPolicy < ApplicationPolicy
  attr_reader :bookmark

  def initialize(user, bookmark)
    @user = user
    @bookmark = bookmark
  end

  def destroy?
    bookmark.topic.user == user[:user_id]
  end

  def update?
    bookmark.topic.user == user[:user_id]
  end
end
