Rails.application.routes.draw do
  get 'users/', to: 'users#index'
  get 'users/:id', to: 'users#show', as: 'user'
  get 'users/:id/posts', to: 'posts#index', as: 'user_posts'
  get 'users/:id/posts/:post_id', to: 'posts#show', as: 'user_post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
