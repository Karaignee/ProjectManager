class Project < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude, :summary, :target_date, :title

  geocoded_by :location

  after_validation :geocode, :if => :location_changed?

  validates :title, :presence => true
  validates :location, :presence => true
  validates :summary, :presence => true


def self.search(search)
   if search
     where('title LIKE :s or location LIKE :s or summary LIKE :s', s: "%#{search}%")
   else
     scoped
   end
end


end



