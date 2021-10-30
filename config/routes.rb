Rails.application.routes.draw do
  namespace :customers do
    get 'addresses/index'
    get 'addresses/edit'
    get 'addresses/create'
    get 'addresses/update'
  end
  namespace :customers do
    get 'orders/new'
    get 'orders/comfirm'
    get 'orders/compleate'
    get 'orders/create'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :customers do
    get 'cart_items/index'
    get 'cart_items/update'
    get 'cart_items/destroy'
    get 'cart_items/destroy_all'
    get 'cart_items/create'
  end
  namespace :customers do
    get 'customers/show'
    get 'customers/edit'
    get 'customers/update'
    get 'customers/unsubscribe'
    get 'customers/withdraw'
  end
  devise_for :customers, controllers: {
   sessions:      'customers/sessions',
   passwords:     'customers/passwords',
   registrations: 'customers/registrations'
  }
  
  

  



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
