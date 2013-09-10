class Work < ActiveRecord::Base
  attr_accessible :company, :description, :end_date, :location, :role, :start_date, :team

  has_many :projects
end
