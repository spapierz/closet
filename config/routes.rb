Rails.application.routes.draw do
  resources :line_items
  resources :posts, :outfits, :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/tagged' => "posts#tagged", as: :tagged
end