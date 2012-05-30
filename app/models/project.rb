class Project < ActiveRecord::Base
  attr_accessible :description, :id, :name, :version
  belongs_to :contractant
  has_many :milestone

end
