class NewProjectRequest < ApplicationRecord
  belongs_to :users
  belongs_to :projects
SPECIALTY = ["Business Development", "Account Management", "Sales", "Web-Development", "Recruitment"]
PAY = ["Per Hour", "Project Based", "Monthly", "Commission Based" ]
EMPTYPE = ["Full Time", "Part Time", "Contractor"]
end
