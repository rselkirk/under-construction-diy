class Review < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :review_uploads
end
