Rails.application.routes.draw do
  get 'welcome/index'
  get 'articles/output' 
  root 'welcome#index'


  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  match 'welcome/index' => 'blog/index', via:"get"
end
