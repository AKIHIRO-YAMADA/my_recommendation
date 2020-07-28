class Movie < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :movie_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true
  validates :heading, presence: true
  validates :category, presence: true
  validates :image, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
