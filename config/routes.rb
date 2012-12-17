Shouter::Application.routes.draw do
  resource :dashboard, only: [:show]
  resources :shouts, only: [:create]
end
