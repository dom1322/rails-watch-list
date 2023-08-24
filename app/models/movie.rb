class Movie < ApplicationRecord
  has_many :bookmarks

  #validaciones
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
