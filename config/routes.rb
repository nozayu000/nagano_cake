Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :customers

  namespace :admin do
    get '/homes' => 'homes#top'
    resources :items
    resources :genres
    resources :customers
    resources :orders,only[:index, :show, :update]
    resources :order_details,only[:update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
