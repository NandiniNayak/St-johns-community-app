json.extract! job, :id, :title, :job_type, :salary, :description, :experience, :age, :contact, :email, :street, :suburb, :postcode, :state, :organisation_id, :created_at, :updated_at
json.url job_url(job, format: :json)