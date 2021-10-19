Rails.application.routes.draw do
  
  namespace :admins do
    get 'items/index'
    get 'items/edit'
    get 'items/new'
    get 'items/show'
  end
  devise_for :customers, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
  }

  # root to: 'homes#top'
  

  



# 管理者側ルーティング

  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }

  namespace :admins do
    root 'top#top'
    resources :items
    resources :genres
    resources :customers
    resources :orders
    resources :order_details
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
