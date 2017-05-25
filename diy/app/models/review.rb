class Review < ApplicationRecord
  
  belongs_to :project
  belongs_to :user
  has_many :review_uploads
  
  after_create :update_project_average_rating, :update_project_review_count, :update_project_complete_count, :update_project_save_count, :update_project_average_cost, :update_project_average_time
  
  validates :content, presence: true
  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :cost, presence: true


  def update_project_average_rating
    self.project.update_average_rating
  end

  def update_project_review_count
    self.project.update_review_count
  end

  def update_project_complete_count
    self.project.update_complete_count
  end

  def update_project_save_count
    self.project.update_save_count
  end

  def update_project_average_cost
    self.project.update_average_cost
  end

  def update_project_average_time
    self.project.update_average_time
  end

  
end
