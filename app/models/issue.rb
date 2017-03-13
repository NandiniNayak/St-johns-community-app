class Issue < ApplicationRecord
  mount_uploader :image, OrgLogoUploader
end
