class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.string :course
      t.string :collaborators
      t.string :role
      t.string :skills
      t.string :type
      t.integer :work_id

      t.timestamps
    end
  end
end
