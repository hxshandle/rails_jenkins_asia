class Project < ActiveRecord::Base
  attr_accessible :description, :endDate, :isValid, :name, :projectNo, :realEndDate, :startDate, :targetfob

  has_one :project_level
end
