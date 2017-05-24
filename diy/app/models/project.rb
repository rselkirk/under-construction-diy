class Project < ApplicationRecord
  # acts_as_votable
  
  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads
  has_many :project_statuses

end
