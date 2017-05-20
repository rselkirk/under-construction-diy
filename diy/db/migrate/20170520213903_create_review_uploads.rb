class CreateReviewUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :review_uploads do |t|
      t.string :image_url
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
