Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts, :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tagged' => "posts#tagged", as: :tagged
end
=======
  #resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root    'posts#index'
  get     'posts'            => 'posts#index'
  get     'posts/new'        => 'posts#new',    as: 'posts_new'
  get     'posts/:id/edit'   => 'posts#edit',   as: 'edit_post'
  get     'posts/:id'        => 'posts#show',   as: 'post'
  post    'posts'            => 'posts#create'
  patch   'posts/:id'        => 'posts#update'
  delete  'posts/:id'        => 'posts#destroy'

  # which is more readable in the community? => or , :to?

end
>>>>>>> 539da29e6909f39c7eaced37915b962908687be6
