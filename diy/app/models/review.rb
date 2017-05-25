class Review < ApplicationRecord
  
  belongs_to :project
  belongs_to :user
  has_many :review_uploads
  
  after_create :update_project_average_rating
  
  validates :content, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :cost, presence: true


  def update_project_average_rating
    self.project.update_average_rating
  end
  
end
