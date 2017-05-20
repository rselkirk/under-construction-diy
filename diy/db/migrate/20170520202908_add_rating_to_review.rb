class AddRatingToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :rating, foreign_key: true
  end
end
