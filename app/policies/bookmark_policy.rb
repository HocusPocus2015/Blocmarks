class BookmarkPolicy < ApplicationPolicy
  attr_reader :bookmark

  def initialize(user, bookmark)
    @user = user
    @bookmark = bookmark
  end

  def destroy?
    # authorize @bookmark
    user.present? && (bookmark.topic.user == user)
  end

  def update?
    user.present? && (bookmark.topic.user == user)
  end
end
