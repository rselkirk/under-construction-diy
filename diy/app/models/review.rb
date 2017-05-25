class Review < ApplicationRecord

  belongs_to :project
  belongs_to :user
  has_many :review_uploads, inverse_of: :review, dependent: :destroy

  accepts_nested_attributes_for :review_uploads, allow_destroy: true

  #*** Removed these validations for testing
  # validates :content, presence: true
  # validates :project_id, presence: true
  # validates :user_id, presence: true
  # validates :cost, presence: true

  # after_commit :remove_review_uploads!, on: :destroy
  after_create :update_project_average_rating, :update_project_review_count, :update_project_complete_count, :update_project_save_count, :update_project_average_cost, :update_project_average_time


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
