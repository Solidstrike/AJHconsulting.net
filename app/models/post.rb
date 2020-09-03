class Post < ApplicationRecord
  belongs_to :users
  belongs_to :projects
  validates :content, presence: true
end
