Rails.application.routes.draw do
  namespace :admin do
    get "homes" => "homes#index"
  end

  resources :categories do
    resources :products
  end
  root :to => 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
end
