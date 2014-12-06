Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :schools do
        resources :users
      end
      resources :auth
    end
  end
end
