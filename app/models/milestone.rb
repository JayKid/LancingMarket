class Milestone < ActiveRecord::Base
  attr_accessible :description, :id, :import, :number
  belongs_to :project
  
end
