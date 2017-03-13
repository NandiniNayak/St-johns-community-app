class Event < ApplicationRecord
  belongs_to :organisation
  belongs_to :user
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("postcode LIKE ?", "%#{search}%")
  end
  
  def self.upcoming
    where('date >= ?', Date.today)
  end
  
  def self.ordered
    order(date: :asc)
  end
  mount_uploader :image, OrgLogoUploader
  geocoded_by :full_street_address
  after_validation :geocode
  
  def full_street_address
    [street, suburb, state, postcode].compact.join(', ')
  end
end
