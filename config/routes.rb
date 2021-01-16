Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/accessories" => "accessories#index"
    post "/accessories" => "accessories#create"
    get "/accessories/:id" => "accessories#show"
    patch "/accessories/:id" => "accessories#update"
    delete "/accessories/:id" => "accessories#destroy"
  end
end
