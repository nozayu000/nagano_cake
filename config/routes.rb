Rails.application.routes.draw do
  # customer側ルーティング
  devise_for :customers, controllers: {
   sessions:      'customers/sessions',
   passwords:     'customers/passwords',
   registrations: 'customers/registrations'
  }

  scope module: 'customers' do
    resources :items, only: [:show, :index]
    root 'homes#top'
    get 'about' => 'homes#about'
   end

  namespace :customers do
   resources :items, only: [:show]
   get 'show' => 'customers#show'
   get 'customers/edit' => 'customers#edit'
   patch 'update' => 'customers#update'
   get 'unsubscribe' => 'customers#unsubscribe'
   patch 'customers/withdraw' => 'customers#withdraw', as: 'customers_withdraw'
   resources :orders, only: [:new, :create, :index, :show]
   post 'orders/comfirm' => 'orders#comfirm'
   get 'orders/complete' => 'orders#complete'
   resources :cart_items, only: [:index, :create, :update, :destroy]
   delete 'cart_items' => 'cart_items#destroy_all', as: 'destroy_all'
   resources :addresses, only: [:index, :create, :destroy, :edit, :update]
  end

  # admin側ルーティング
  devise_for :admins, controllers: {
   sessions:      'admins/sessions',
   passwords:     'admins/passwords',
   registrations: 'admins/registrations'
  }

  namespace :admins do
   root :to => 'orders#index'
   resources :customers, only: [:index, :edit, :update, :show]
   resources :genres, only: [:index, :create, :edit, :update]
   resources :items, only: [:show, :index, :new, :create, :edit, :update]
   resources :orders, only: [:index, :show, :update]
   resources :order_details, only: [:update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
