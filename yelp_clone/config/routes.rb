Rails.application.routes.draw do

  devise_for :users
get 'restaurants' => 'restaurants#index'

root to: "restaurants#index"


resources :restaurants do
  resources :reviews
end

end
