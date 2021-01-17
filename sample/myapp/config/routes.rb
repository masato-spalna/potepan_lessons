Rails.application.routes.draw do
  get 'posts/index'
  get 'users/index'
  get 'lessons/hello', to: 'lessons#hello'
  get 'lessons/call', to: 'lessons#call'
  
  resources :users
  resources :posts
end
