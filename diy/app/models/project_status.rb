class ProjectStatus < ApplicationRecord
  belongs_to :user
  belongs_to :project

  scope :saved, -> { where(saves: true) }
end
