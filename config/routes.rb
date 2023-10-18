Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # Weclome page route
  get "/", to: "welcome#index"

  # Records routes
  get "/records", to: "records#index"
  get "/records/new", to: "records#new"
  post "/records", to: "records#create"
  get "/records/:id", to: "records#show"
  get "/records/:id/edit", to: "records#edit"
  patch "/records/:id", to: "records#update"
  # Variants routes
  get "/variants", to: "variants#index"
  get "/variant/:id", to: "variants#show"
  get "/variant/:id/edit", to: "variants#edit"
  patch "/variant/:id", to: "variants#update"


  # Record Variant routes
  get "/records/:record_id/variants", to: "record_variants#index"
  get "/records/:record_id/variants/new", to: "record_variants#new"
  post "/records/:record_id/variants", to: "record_variants#create"
end
