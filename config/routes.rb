Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    #CRUD
    GET '/books' => 'books#index'
    GET '/books/:id' => 'books#show'
    POST '/books' => 'books#create'
    PATCH '/books/:id' => 'books#update'
    DELETE '/books/:id' => 'books#destroy'
  end
end
