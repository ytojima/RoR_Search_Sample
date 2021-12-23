Rails.application.routes.draw do
  root to: 'homes#index'
  get '/search', to: 'homes#search', as: 'search'
end
