Rails.application.routes.draw do
  #resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root    'products#index'
  get     'products'            => 'products#index'
  get     'products/new'        => 'products#new',    as: 'products_new'
  get     'products/:id/edit'   => 'products#edit',   as: 'edit_product'
  get     'products/:id'        => 'products#show',   as: 'product'
  post    'products'            => 'products#create'
  patch   'products/:id'        => 'products#update'
  delete  'products/:id'        => 'products#destroy'

  # which is more readable in the community? => or , :to?

end
