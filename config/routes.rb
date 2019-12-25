Rails.application.routes.draw do
  resources :farms
  devise_for :users
  root to: "home#index"
  get "/farms/:id/:id2", to: "farms#show", as: "alert"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
