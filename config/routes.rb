Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :foods, except: :index do
    resources :reviews, only: [ :new, :create ]
  end

  get "/my_fav_foods", to: 'foods#my_fav_foods'
  get "/my_reviews", to: 'reviews#my_reviews'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
