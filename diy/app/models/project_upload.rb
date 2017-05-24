class ProjectUpload < ApplicationRecord

  mount_uploader :image_url, ImageUrlUploader

  belongs_to :project, inverse_of: :project_uploads

end
