class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :bookmark

  def liked(bookmark)
    likes.where(bookmark_id: bookmark.id).first
  end
end
