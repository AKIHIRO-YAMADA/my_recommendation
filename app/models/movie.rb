class Movie < ApplicationRecord
belongs_to :user, optional: true
belongs_to :category
has_many :movie_comments,dependent: :destroy
has_many :favorites, dependent: :destroy
has_one_attached :image

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
