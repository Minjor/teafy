Rails.application.routes.draw do
  resources :songs
  resources :albums
  resources :genres
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  resources :artists
  resources :homes
  get '/homepage' => 'homes#index', as: 'homepage'
  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
