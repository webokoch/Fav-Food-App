class Review < ApplicationRecord
  validates :content, presence: true, length: { maximum: 500 }
  validates :rating, presence: true, inclusion: { in: 1..5 }
  belongs_to :food
end
