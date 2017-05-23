class ReviewUpload < ApplicationRecord

  mount_uploader :image_url, ImageUrlUploader

  belongs_to :review, inverse_of: :review_uploads

end
