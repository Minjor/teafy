Rails.application.routes.draw do
  get 'users/show', as: 'user_profile'

  get 'user/show'

  root to: "homes#index"
  get '/homepage' => 'homes#index', as: 'homepage'

  resources :songs
  resources :albums
  resources :genres
  resources :artists
  resources :homes
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
