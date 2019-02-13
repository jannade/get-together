Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :spaces do
    resources :bookings
  end
end
