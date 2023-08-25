Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end

  get "/archived/articles", to: "articles#archived"
end
