class Article < ApplicationRecord
  belongs_to :organisation
  has_many :comments
  mount_uploader :image, OrgLogoUploader
  
  def self.recent
    order(created_at: :desc)
  end
end
