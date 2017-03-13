class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("postcode LIKE ?", "%#{search}%")
    where("job_type LIKE ?", "%#{search}%")
  end
  
end
