Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/mybookings", to: "pages#mybookings", as: :mybookings
  get "/mylistings", to: "pages#mylistings"

  # resources :bookings

  resources :spaces do
    resources :bookings
     # get "/mybookings", to: "pages#mybookings", as: :mybookings, on: :collection
  end
end
