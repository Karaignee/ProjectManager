class Project < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :summary, :target_date, :title

  geocoded_by :location

  after_validation :geocode, :if => :location_changed?

  validates :title, :presence => true
  validates :location, :presence => true
  validates :summary, :presence => true




end
