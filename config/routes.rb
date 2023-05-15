Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # PostsController
  get 'posts/add', to: 'posts#add', as: 'add_post'

  # ProfileController
  get 'profile/create', to: 'profile#add', as: 'add_profile'
  get 'profile/edit', to: 'profile#edit', as: 'edit_profile'

end
