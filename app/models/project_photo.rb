class ProjectPhoto < ActiveRecord::Base
  attr_accessible :project_id, :project_photo_content_type, :project_photo_file_name, :project_photo_file_size

  belongs_to :project
  has_attached_file :project_photo
end
