class BookmarkPolicy < ApplicationPolicy
  attr_reader :bookmark

  def initialize(user, bookmark)
    @user = user
    @bookmark = bookmark
  end

  def destroy?
    user.present? && (bookmark.user == user)
  end

  def update?
    # bookmark.user == user
    true
  end
end
