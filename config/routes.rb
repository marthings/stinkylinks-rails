Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :likes
      resources :links

      root to: "users#index"
    end
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :links, only: [:index, :show]
    end
  end

  devise_for :users, controllers: { registrations: "registrations" }
  
  resources :users, only: [:index, :show]
  resources :links, except: [:show] do
    # module: lets us have /links/likes/likes_controller.rb
    resource :like, module: :links
  end
  root 'links#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
