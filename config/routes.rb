Rails.application.routes.draw do
  resources :genres
  resources :users
  resource :session
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites
  end
  get 'signup' => 'users#new'
  #get "movies/filter/hits" => "movies#index", scope: "hits"
  #get "movies/filter/flops" => "movies#index", scope: "flops"
  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies
end
