json.extract! playlist_review, :id, :playlist_id, :user_id, :review, :created_at, :updated_at
json.url playlist_review_url(playlist_review, format: :json)
