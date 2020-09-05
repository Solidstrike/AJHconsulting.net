Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  match 'users' => 'users#show', via: :get

  
get 'about', to: 'pages#about' 
get 'faq', to: 'pages#faq' 
get 'contact', to: 'pages#contact'  

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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

