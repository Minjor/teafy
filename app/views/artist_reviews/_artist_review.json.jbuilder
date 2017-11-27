json.extract! artist_review, :id, :artist_id, :user_id, :review, :created_at, :updated_at
json.url artist_review_url(artist_review, format: :json)
