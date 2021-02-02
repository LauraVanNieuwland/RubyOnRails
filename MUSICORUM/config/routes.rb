Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  match 'users' => 'users#show', via: :get

  resources :instruments do
    resources :bookings, only: [:index, :new, :create] do
      member do
        put :accept
        put :decline
      end
    end
  end
  resources :bookings, only: [:destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
