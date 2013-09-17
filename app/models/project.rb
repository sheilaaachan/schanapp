class Project < ActiveRecord::Base
  attr_accessible :collaborators, :course, :description, :end_date, :role, :skills, :start_date, :title, :type, :work_id, :image, :project_photos, :project_photos_attributes

  belongs_to :work
  has_many :project_photos

  accepts_nested_attributes_for :project_photos, :allow_destroy => true

  has_attached_file :image, :styles => { :medium => "250x250#", :thumb => "100x100#" }, :default_url => "/assets/boo.jpg"

  PROJECT_TYPES = ["Project","Photography","Ceramics","Design"]
  validates_inclusion_of :type, :in => PROJECT_TYPES, :message => "is not an option"
end
