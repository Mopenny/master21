Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about_me',  to: 'pages#index'
  get 'home', to: 'pages#home'
  get 'news', to: 'pages#news'

  resources :jobs

  get 'form', to: 'authors#form'

  resources :authors
  root 'authors#index'
end
