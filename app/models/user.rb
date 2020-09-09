class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :reviews, dependent: :destroy
   has_many :new_project_requests, dependent: :destroy
   has_many :posts, dependent: :destroy
   has_one_attached :image
   has_one_attached :company_logo
   validates :first_name, presence: true
   validates :last_name, presence: true 
  
end
