class Movie < ApplicationRecord
belongs_to :user
belongs_to :category
has_many :movie_comments,dependent: :destroy
has_many :favorite, dependent: :destroy
end
