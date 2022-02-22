Rails.application.routes.draw do
  get 'pages/home'
  get 'users/:id', to: 'pages#user'
  get 'users/:id/posts', to: 'pages#posts'
  get 'users/:id/posts/:postid', to: 'pages#post'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
