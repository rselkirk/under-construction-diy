class RemoveColumnsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :image, :string
    remove_column :reviews, :rating, :string
  end
end
