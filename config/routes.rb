Rails.application.routes.draw do
  root to: "homes#index"
  get '/homepage' => 'homes#index', as: 'homepage'

  resources :songs
  resources :albums
  resources :genres
  resources :artists
  resources :homes
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
