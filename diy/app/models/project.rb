class Project < ApplicationRecord

  attr_accessor :avg_rating

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project
  has_many :project_statuses

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

  # this method applies to any instance of this class
  # it rounds avg rating to the next whole/half
  # examples: 1.1 => 1.5, 1.6 => 2, 3.6666667 => 4
  def avg_rating
    (self.reviews.average(:rating)*2).ceil.to_f / 2
  end

end