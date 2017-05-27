class SearchRecord < ApplicationRecord
  self.abstract_class = true
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
