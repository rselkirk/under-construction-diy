class Review < ApplicationRecord

  belongs_to :project
  belongs_to :user
  has_many :review_uploads, inverse_of: :review

  accepts_nested_attributes_for :review_uploads, allow_destroy: true

  #*** Removed these validations for testing
  # validates :content, presence: true
  # validates :project_id, presence: true
  # validates :user_id, presence: true
  # validates :cost, presence: true

end
