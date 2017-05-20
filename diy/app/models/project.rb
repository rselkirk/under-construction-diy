class Project < ApplicationRecord

  belongs_to :user
  has_many :reviews
  has_many :comments
  has_many :tags

end
