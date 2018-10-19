Rails.application.routes.draw do
  get '/tops', to: 'tops#index'
  get '/contacts', to: 'blogs#contact'

  resources :blogs do
    collection do
      post :confirm
    end
  end
end
