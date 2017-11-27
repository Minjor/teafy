Rails.application.routes.draw do
  resources :artist_califications
  resources :playlist_califications
  resources :album_califications
  resources :song_califications
  resources :playlist_reviews
  resources :artist_reviews
  resources :album_reviews
  resources :song_reviews
  resources :reports
  resources :playlists
  resources :songs
  resources :albums
  resources :genres
  resources :artists
  resources :homes

  root to: "homes#index"
  get '/homepage' => 'homes#index', as: 'homepage'

    resources :playlists do
        post 'follow', :on => :collection
        post 'unfollow', :on => :collection
        post 'show', :on => :collection
    end
    resources :songs do
        post 'follow', :on => :collection
        post 'unfollow', :on => :collection
    end

  get 'users/show', as: 'user_profile'
  get 'users' => 'users#index'
  get 'user/show'
  get '/admin_dashboard' => 'users#admin_dashboard', as: 'admin_dashboard'
  get '/your_library' => 'users#your_library', as: 'your_library'
  post '/change_role' => 'users#change_role', as: 'change_role'

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        :omniauth_callbacks => "users/omniauth_callbacks"
      }

      delete 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
      #post 'users/:id' => 'users#change_role',:via => :post, :as => :change_role
  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
