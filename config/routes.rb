Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :posts
  post 'order_complete' => 'cart#order_complete'
  
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'
  
  get 'empty_cart' => 'cart#empty_cart'
  
  devise_for :users
  
  root 'storefront#home'
 
  get 'home' => 'storefront#home'
    
  get 'shop' => 'storefront#shop'

  get 'blog' => 'storefront#blog'

  get 'contact' => 'storefront#contact'
  
  resources :cart
  resources :products
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
