Shouter::Application.routes.draw do
  resource :dashboard, only: [:show]
  resources :text_shouts, only: [:create]
end
