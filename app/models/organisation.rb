class Organisation < ApplicationRecord
    has_many :articles
    has_many :profiles
    mount_uploader :logo, OrgLogoUploader
end
