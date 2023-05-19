Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'posts#index', as: 'index_post'

  # PostsController
  get 'posts/new', to: 'posts#new', as: 'new_post'
  post 'posts/create', to: 'posts#create', as: 'create_post'
  get 'posts/show/:id', to: 'posts#show', as: 'show_post'
  get 'posts/edit/:id', to: 'posts#edit', as: 'edit_post'
  post 'posts/update/:id', to: 'posts#update', as: 'update_post'
  delete '/posts/delete/:id', to: 'posts#destroy', as: 'delete_post'

  # CommentsController
  post '/posts/:post_id/comment/create', to: 'comments#create', as: 'create_comment'
  
  # ProfileController
  get 'profile/new', to: 'profile#new', as: 'new_profile'
  post '/profile/create', to: 'profile#create', as: 'create_profile'
  get 'profile/edit', to: 'profile#edit', as: 'edit_profile'
  post '/profile/update', to: 'profile#update', as: 'update_profile'

end
