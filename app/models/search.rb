class Search < ApplicationRecord
def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("postcode LIKE ?", "%#{search}%")
  end
end