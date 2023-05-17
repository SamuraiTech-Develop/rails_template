Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'posts#index', as: 'index_post'

  # PostsController
  get 'posts/add', to: 'posts#add', as: 'add_post'
  post 'posts/store', to: 'posts#store', as: 'store_post'

  # ProfileController
  get 'profile/add', to: 'profile#add', as: 'add_profile'
  post '/profile/store', to: 'profile#store', as: 'store_profile'
  get 'profile/edit', to: 'profile#edit', as: 'edit_profile'
  post '/profile/update', to: 'profile#update', as: 'update_profile'

end
