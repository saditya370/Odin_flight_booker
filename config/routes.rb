Rails.application.routes.draw do
  # get 'bookings/new'
  #  get "cre",to: 'bookings#create'
  root 'flights#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :flights
  resources :bookings
  # Defines the root path route ("/")
  # root "articles#index"
  get "all",to: 'flights#show'
  resources :airport
end
