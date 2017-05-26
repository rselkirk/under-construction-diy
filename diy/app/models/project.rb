require 'elasticsearch/model'


class Project < ApplicationRecord

  attr_accessor :avg_rating

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project
  has_many :project_statuses

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def update_average_rating
    update_attribute(:avg_rating, ((self.reviews.average(:rating)*2).ceil.to_f / 2))
  end

  def update_review_count
    update_attribute(:review_count, self.reviews.count)
  end

  def update_complete_count
    update_attribute(:complete_count, ProjectStatus.where(["project_id = ? and completes = ?", self, true]).count)
  end

  def update_save_count
    update_attribute(:save_count, ProjectStatus.where(["project_id = ? and saves = ?", self, true]).count)
  end

  def update_average_cost
    update_attribute(:avg_cost, (self.reviews.average(:cost)))
  end

  def update_average_time
    update_attribute(:avg_time, (self.reviews.average(:time)))
  end
end


Project.import force: true

@projects = Project.search('foobar').records