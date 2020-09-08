class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: Devise.email_regexp
 
validates :comment, presence: :true
end
