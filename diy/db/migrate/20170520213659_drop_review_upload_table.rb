class DropReviewUploadTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :review_uploads
  end
end
