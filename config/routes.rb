Shouter::Application.routes.draw do
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
end
