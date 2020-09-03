class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   has_many :reviews
   has_many :new_project_requests
   has_many :posts
   has_one_attached :image
   has_one_attached :company_logo
   validates :first_name, presence: true
   validates :first_name, length: { minimum: 3 }
   validates :last_name, presence: true
   validates :last_name, length: { minimum: 3 }
     
  
  #  dependent: :destroy
end
