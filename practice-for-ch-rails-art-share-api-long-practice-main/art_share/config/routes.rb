Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, except: [:new, :edit] do
    resources :comments, only: [:create, :destroy, :index] 

    resources :artworks, only: :index do
      resources :comments, only: [:create, :destroy, :index]
    end

  end
  resources :artworks, except: [:index, :new, :edit]
  resources :artwork_shares, only: [:create, :destroy]

end
