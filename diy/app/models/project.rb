require 'elasticsearch/model'


class Project < ApplicationRecord
  # acts_as_votable
  
  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :project_uploads, inverse_of: :project
  has_many :project_statuses

  accepts_nested_attributes_for :project_uploads, allow_destroy: true

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end

Project.import force: true

@projects = Project.search('foobar').records