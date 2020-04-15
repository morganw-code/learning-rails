Rails.application.routes.draw do
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  post "/books", to: "books#create"
  patch "/books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy"

  get "/sayhi", to: "pages#sayhi"

  get "/pokemon", to: "pokemon#show"

  get "/redirectme", to: "pages#redirectme"
  get "/redirectedto", to: "pages#redirectedto"
end
