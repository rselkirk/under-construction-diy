class ProjectStatus < ApplicationRecord
  belongs_to :user
  belongs_to :project

  scope :saved, -> { where(saves: true) }

  after_save :update_project_complete_count, :update_project_save_count

  def update_project_complete_count
    self.project.update_complete_count
  end

  def update_project_save_count
    self.project.update_save_count
  end

end
