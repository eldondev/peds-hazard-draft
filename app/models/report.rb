class Report < ActiveRecord::Base
  attr_accessible :date, :description, :email, :latitude, :longitude, :name, :picfile
  has_attached_file :picfile
end
