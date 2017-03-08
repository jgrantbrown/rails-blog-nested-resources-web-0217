RailsBlog::Application.routes.draw do

  get 'comment/create'

  resources :posts do
    resources :comments
  end

  

  resources :users
  resources :tags
  resources :posts

end
