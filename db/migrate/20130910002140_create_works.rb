class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :company
      t.string :team
      t.string :role
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
