class CreateUserProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :user_projects do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.boolean :completes
      t.boolean :saves

      t.timestamps
    end
  end
end
