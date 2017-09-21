Rails.application.routes.draw do
  resources :trips do
    get 'with/:ride_id', on: :member, to: 'trips#share', as: :share
    get 'with/:ride_id', on: :collection, to: 'trips#search', as: :search
    # post 'req/:ride_id', on: :member, to: 'trips#req', as: :req
  end

  resources :rides

  resources :shares, only: %i[create]

  get 'welcome/index'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
