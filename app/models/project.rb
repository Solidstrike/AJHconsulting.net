class Project < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one :new_project_request, dependent: :destroy
  belongs_to :user
  # has_many_attached :image
  # has_one_attached :company_logo

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?

  validates :title, presence: true
  validates :company, presence: true
  validates :headline, presence: true
  validates :job_description, presence: true
  validates :starts_at, presence: true
  
end
