json.extract! song_calification, :id, :user_id, :song_id, :grade, :created_at, :updated_at
json.url song_calification_url(song_calification, format: :json)
