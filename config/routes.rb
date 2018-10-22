Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  get '/', to: 'tops#index'
  get '/tops', to: 'tops#index'
  get '/contacts', to: 'blogs#contact'
  get '/login', to: 'sessions#new'
  
  resources :blogs do
    collection do
      post :confirm
    end
  end

end
