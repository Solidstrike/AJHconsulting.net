class Project < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :new_project_requests, dependent: :destroy
  belongs_to :users, dependent: :destroy
  has_one_attached :image
  has_one_attached :company_logo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
