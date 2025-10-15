Rails.application.routes.draw do
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
  # root "posts#index"
end
