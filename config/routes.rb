Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  devise_for :admins
  root to: 'pages#home'
  match 'users' => 'users#show', via: :get

  
get 'about', to: 'pages#about' 
get 'faq', to: 'pages#faq' 

  resources :projects do
    resources :new_project_requests do
      member do
        put :accept
        put :decline
      end
    end
  end
  resources :reviews
  resources :posts
  resources :contacts, only: [ :new, :create, :thanks ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

