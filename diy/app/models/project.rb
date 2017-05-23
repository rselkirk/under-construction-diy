class Project < ApplicationRecord

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

end