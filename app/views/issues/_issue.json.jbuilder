json.extract! issue, :id, :title, :description, :image, :suburb, :city, :state, :postcode, :contact, :priority, :solved, :created_at, :updated_at
json.url issue_url(issue, format: :json)