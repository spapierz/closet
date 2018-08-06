Rails.application.routes.draw do
  resources :outfits
  resources :posts, :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tagged' => "posts#tagged", as: :tagged
end