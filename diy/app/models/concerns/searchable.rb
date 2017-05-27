module Searchable

  # This module is basically a modified Elasticsearch::Model::Callbacks
  # that doesn't crash trying to delete things that don't exist

  def self.included(base)
    base.class_eval do
      after_commit ->{ __elasticsearch__.index_document }, on: :create
      after_commit ->{ __elasticsearch__.update_document }, on: :update
      after_commit ->{
        begin
          __elasticsearch__.delete_document
        rescue Elasticsearch::Transport::Transport::Errors::NotFound
          nil
        end
      }, on: :destroy
    end
  end
  
end
