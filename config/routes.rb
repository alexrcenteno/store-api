Rails.application.routes.draw do
  get "/products" => "products#index"
  post "/products" => "products#create"
end
