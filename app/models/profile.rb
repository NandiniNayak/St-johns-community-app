class Profile < ApplicationRecord
  belongs_to :organisation, optional: true
  belongs_to :user
  
  mount_uploader :picture, OrgLogoUploader
  
  def full_name
    [first_name, last_name].join(' ')
  end
end
