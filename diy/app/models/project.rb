require 'elasticsearch/model'

class Project < ApplicationRecord
  include Elasticsearch::Model
  include Searchable

  attr_accessor :avg_rating
  acts_as_taggable_on :tags

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project
  has_many :project_statuses

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

<<<<<<< HEAD
=======
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

>>>>>>> master
  after_create :update_project_stats

  def update_project_stats
    update_attribute(:avg_rating, 0)
    update_attribute(:review_count, 0)
    update_attribute(:complete_count, 0)
    update_attribute(:save_count, 0)
  end

  def update_average_rating
    update_attribute(:avg_rating, ((reviews.average(:rating)*2).ceil.to_f / 2))
  end

  def update_review_count
    update_attribute(:review_count, reviews.count)
  end

  def update_complete_count
    update_attribute(:complete_count,  project_statuses.where(completes: true).count)
  end

  def update_save_count
    update_attribute(:save_count, project_statuses.where(saves: true).count)
  end

  def update_average_cost
    update_attribute(:avg_cost, (reviews.average(:cost)))
  end

  def update_average_time
    update_attribute(:avg_time, (reviews.average(:time)))
  end
end


