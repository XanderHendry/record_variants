Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"
  get "/records", to: "records#index"
  get "/records/:id", to: "records#show"
  get "/variants", to: "variants#index"
  get "/variant/:id", to: "variants#show"
  get "/records/:record_id/variants", to: "record_variants#index"
end
