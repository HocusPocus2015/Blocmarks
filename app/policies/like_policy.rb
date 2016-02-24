class LikePolicy < ApplicationPolicy
  attr_reader :like

  def initialize(bookmark, like)
    @bookmark = bookmark
    @like = like
  end

  def destroy?
    true
  end

  def create?
    true
  end
end
