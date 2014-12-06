Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :schools do
        resources :users
      end
      match 'auth/login', to: 'auth#login', via: [:post]
    end
  end
end
