# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171127033446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_califications", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "grade"
    t.index ["album_id"], name: "index_album_califications_on_album_id", using: :btree
    t.index ["user_id"], name: "index_album_califications_on_user_id", using: :btree
  end

  create_table "album_genres", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_album_genres_on_album_id", using: :btree
    t.index ["genre_id"], name: "index_album_genres_on_genre_id", using: :btree
  end

  create_table "album_reviews", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "user_id"
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.index ["artist_id"], name: "index_albums_on_artist_id", using: :btree
  end

  create_table "artist_califications", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "uid"
    t.index ["artist_id"], name: "index_artist_califications_on_artist_id", using: :btree
    t.index ["uid"], name: "index_artist_califications_on_uid", using: :btree
  end

  create_table "artist_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "genre_id"
    t.index ["artist_id"], name: "index_artist_genres_on_artist_id", using: :btree
    t.index ["genre_id"], name: "index_artist_genres_on_genre_id", using: :btree
  end

  create_table "artist_reviews", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followed_albums", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_followed_albums_on_album_id", using: :btree
    t.index ["user_id"], name: "index_followed_albums_on_user_id", using: :btree
  end

  create_table "followed_artists", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_followed_artists_on_artist_id", using: :btree
    t.index ["user_id"], name: "index_followed_artists_on_user_id", using: :btree
  end

  create_table "followed_playlists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "playlist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["playlist_id"], name: "index_followed_playlists_on_playlist_id", using: :btree
    t.index ["user_id"], name: "index_followed_playlists_on_user_id", using: :btree
  end

  create_table "followed_songs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_followed_songs_on_song_id", using: :btree
    t.index ["user_id"], name: "index_followed_songs_on_user_id", using: :btree
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "in_playlists", force: :cascade do |t|
    t.integer "song_id"
    t.integer "playlist_id"
    t.index ["playlist_id"], name: "index_in_playlists_on_playlist_id", using: :btree
    t.index ["song_id"], name: "index_in_playlists_on_song_id", using: :btree
  end

  create_table "playlist_califications", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "grade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "uid"
    t.index ["playlist_id"], name: "index_playlist_califications_on_playlist_id", using: :btree
    t.index ["uid"], name: "index_playlist_califications_on_uid", using: :btree
  end

  create_table "playlist_reviews", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "user_id"
    t.text     "review"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_playlists_on_user_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_califications", force: :cascade do |t|
    t.integer  "song_id"
    t.integer  "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "uid"
    t.index ["song_id"], name: "index_song_califications_on_song_id", using: :btree
    t.index ["uid"], name: "index_song_califications_on_uid", using: :btree
  end

  create_table "song_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "song_id"
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "album_id"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id", using: :btree
    t.index ["artist_id"], name: "index_songs_on_artist_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "code"
    t.string   "username"
    t.string   "pic"
    t.string   "provider"
    t.string   "uid"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
