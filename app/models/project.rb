class Project < ActiveRecord::Base
  attr_accessible :description, 
                  :endDate, 
                  :isValid, 
                  :name, 
                  :projectNo, 
                  :realEndDate, 
                  :startDate, 
                  :targetfob,
                  :project_level

  validates_presence_of :name
end
