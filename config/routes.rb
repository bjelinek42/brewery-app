Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/locations" => "locations#create"
  get "/locations/:id" => "locations#show"
  get "/breweries", to: "breweries#index"
  get "/breweries/:id/address", to: "breweries#getAddress"
  get "/breweries/:id/lat", to: "breweries#getLatLong"
 
  
end
