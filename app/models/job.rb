class Job < ApplicationRecord
  belongs_to :organisation
  
  def self.search(search)
    where("job_type LIKE ?", "%#{search}%")
    where("postcode LIKE ?", "%#{search}%")
    where("title LIKE ?", "%#{search}%")
  end
  
  def self.latest
    order(created_at: :asc)
  end
    
end
