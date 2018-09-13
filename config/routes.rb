Rails.application.routes.draw do
  resources :next_battles
  resources :rewards
  resources :condition_all_texts
  resources :specs
  resources :statuses
  resources :markets
  resources :items
  resources :proper_names
  resources :names
  get 'top_page/privacy'
  root 'top_page#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
