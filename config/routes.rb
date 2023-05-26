Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # PostsController
  get '/', to: 'posts#index', as: 'index_posts'
  get 'posts/new', to: 'posts#new', as: 'new_post'

  # ProfileController
  get 'profile/new', to: 'profile#new', as: 'new_profile'
  get 'profile/edit', to: 'profile#edit', as: 'edit_profile'

end
