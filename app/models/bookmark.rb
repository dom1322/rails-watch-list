class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  #Validaciones
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list, message: "you can't repeat a movie" }
end
