class List < ApplicationRecord
  has_one_attached :photo

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy

  validates :name, :photo, presence: true
  validates :name, uniqueness: true
end
