class Review < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :review_uploads

  validates :content, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :cost, presence: true
  
end
