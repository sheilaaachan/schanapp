class Project < ActiveRecord::Base
  attr_accessible :collaborators, :course, :description, :end_date, :role, :skills, :start_date, :title, :type, :work_id

  belongs_to :work
end
