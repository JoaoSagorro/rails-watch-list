class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true
  validates_uniqueness_of :title
  validates :overview, presence: true
  # validates :rating, presence: true, inclusion: { in: (0..10) }
end
