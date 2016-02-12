Rails.application.routes.draw do
  root 'welcome#index'
  resources :artists
  resources :artistsimg
  resources :songs
end
