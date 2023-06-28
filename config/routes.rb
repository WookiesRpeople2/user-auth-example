Rails.application.routes.draw do
  devise_for :users

  root "posts#index"
  get "/posts/my_posts", to: "posts#my_posts"
  resources :posts
end
