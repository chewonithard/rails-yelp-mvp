Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :create, :show, :edit, :update] do
    resources :reviews, only: [:create]
  end

  root to: "restaurants#index"
end
