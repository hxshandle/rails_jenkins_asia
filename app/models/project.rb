class Project < ActiveRecord::Base
  attr_accessible :description, :endDate, :isValid, :name, :projectNo, :realEndDate, :startDate, :targetfob,:project_level_id

end
