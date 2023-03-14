Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
  resources :signups
  resources :dashboards

  delete "logout", to: "dashboards#destroy"
  resources :logins

  resources :recipes do
    put :favorite, on: :member
  end

  resources :favorite_recipes

  resources :shops

  resources :stashes

  resources :admin

end
