Rails.application.routes.draw do
  resources :transitions
  get "five_radars", :to => "assembly_nums#five_radar", :as => 'five_radars'
  get "mega_assembles", :to => "assembly_nums#mega_assemble", :as => 'mega_assembles'
  resources :assembly_nums
  resources :consort_planes
  resources :intentions
  resources :battle_systems
  get "block/results", :to => "blocks#result", :as => 'block_results' 
  resources :blocks
  resources :next_battles
  get "reward/graph", :to => "rewards#graph", :as => 'reward_graphs' 
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
