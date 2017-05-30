class RemoveRatingIdFromReviews < ActiveRecord::Migration[5.0]
  def change
    # remove_reference :reviews, :rating, foreign_key: true
  end
end
