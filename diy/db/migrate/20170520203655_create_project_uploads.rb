class CreateProjectUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :project_uploads do |t|
      t.string :image_url
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
