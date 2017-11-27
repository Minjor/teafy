json.extract! artist_calification, :id, :artist_id, :user_id, :grade.integer, :created_at, :updated_at
json.url artist_calification_url(artist_calification, format: :json)
