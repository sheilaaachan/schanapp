class Attachment < ActiveRecord::Base
  attr_accessible :description, :title, :type
  has_attached_file :image, :styles => { :medium => "300x300#", :thumb => "100x100#" }, :default_url => "/assets/boo.jpg"
end
