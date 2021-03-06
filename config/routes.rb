Rails.application.routes.draw do
  root 'products#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :products do
    resources :comments, only: [:create]
    resource :vote, only: [:create, :destroy]
  end
  
  
  
  #get '/products', to: 'products#index'
  #get '/products/new', to: 'products#new', as: 'new_product'
  #post '/products', to: 'products#create'
  #get '/products/:id', to: 'products#show', as: 'product'
  #get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  #patch '/products/:id', to: 'products#update'
  #delete '/products/:id', to: 'products#destroy'

  #resources :products, only [:acciones-que-queremos-que-muestre :show :edit]
  #resources :products, except [:acciones-que-queremos-que-excluya :index :create]
end
