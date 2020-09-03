class Review < ApplicationRecord
  belongs_to :users
  belongs_to :projects
  validates :content, presence: true
  validates :rating,  length: { in: 1..5 }
end
