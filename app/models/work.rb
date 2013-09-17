class Work < ActiveRecord::Base
  attr_accessible :company, :description, :end_date, :location, :role, :start_date, :team

  has_many :projects
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/boo.jpg"
end
