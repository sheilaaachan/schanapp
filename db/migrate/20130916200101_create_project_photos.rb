class CreateProjectPhotos < ActiveRecord::Migration
  def change
    create_table :project_photos do |t|
      t.string :project_photo_file_name
      t.string :project_photo_content_type
      t.integer :project_photo_file_size
      t.integer :project_id

      t.timestamps
    end
  end
end
