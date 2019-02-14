Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/mybookings", to: "pages#mybookings"
  get "/mylistings", to: "pages#mylistings"

  resources :spaces do
    resources :bookings
  end
end
