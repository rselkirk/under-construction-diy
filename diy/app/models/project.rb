class Project < ApplicationRecord

  attr_accessor :avg_rating

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project
  has_many :project_statuses

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

  def avg_rating
    self.reviews.average(:rating).to_i
  end

end