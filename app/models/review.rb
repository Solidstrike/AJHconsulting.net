class Review < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :content, presence: true
  validates :rating,  length: { in: 1..5 }
end
