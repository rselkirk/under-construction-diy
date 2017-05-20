class AddProjectToComment < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :project, foreign_key: true
  end
end
