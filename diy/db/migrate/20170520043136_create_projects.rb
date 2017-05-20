class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.string :image
      t.text :instructions
      t.boolean :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
