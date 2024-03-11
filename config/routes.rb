Rails.application.routes.draw do
  get 'lists/new'

  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  get '/top' => 'homes#top'
  
   # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
  
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
    patch 'lists/:id' => 'lists#update', as: 'update_list'
    
    delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
