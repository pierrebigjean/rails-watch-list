class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end
