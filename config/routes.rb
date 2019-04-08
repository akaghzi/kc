Rails.application.routes.draw do
  get 'company_users/index'
  resources :companies
  devise_for :users, controllers: {
          sessions: 'users/sessions',
          passwords: 'users/passwords',
          registrations: 'users/registrations'
        }
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
