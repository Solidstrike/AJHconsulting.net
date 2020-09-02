class NewProjectRequest < ApplicationRecord
  belongs_to :users
  belongs_to :projects
end
