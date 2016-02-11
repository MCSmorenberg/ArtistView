Rails.application.routes.draw do
  root 'welcome#index'
  resources :artists
  resources :songs
end
