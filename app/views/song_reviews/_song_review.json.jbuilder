json.extract! song_review, :id, :user_id, :song_id, :review, :created_at, :updated_at
json.url song_review_url(song_review, format: :json)
