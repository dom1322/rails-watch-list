class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  #Validaciones
  validates :name, presence: true, uniqueness: true
end
