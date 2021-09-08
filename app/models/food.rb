class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :cuisine, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
