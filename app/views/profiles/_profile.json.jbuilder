json.extract! profile, :id, :first_name, :last_name, :picture, :organisation_id, :user_id, :bio, :created_at, :updated_at
json.url profile_url(profile, format: :json)