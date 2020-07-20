class Movie < ApplicationRecord
belongs_to :user, optional: true
belongs_to :category
has_many :movie_comments,dependent: :destroy
has_many :favorite, dependent: :destroy
has_one_attached :image
end
