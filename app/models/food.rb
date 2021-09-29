class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :cuisine, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
end
