Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
  get 'articles/output'
  root 'welcome#index'


  root 'users#index'
  resources :users
  resources :users_sessions

  get 'login' => 'user_sessions#new'
  post 'logout' => 'user_sessions#destroy'

  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  match 'welcome/index' => 'blog/index', via:"get"
end
