Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  namespace :site do
    get 'home' => 'home#index'
    get 'search' => 'search#ads'

    namespace :profile do
      resources :dashboard, only: [:index]
      resources :ads, only: [:index, :edit, :update, :new, :create]
      resources :my_data, only: [:edit, :update]
    end

    resources :ad_detail, only: [:index, :show]
    resources :categories, only: [:show]
    resources :comments, only: [:create]
  end

  namespace :checkout do
    resources :payments, only: [:create]
    resources :notifications, only: [:create]
  end

  get 'admin' => 'backoffice/dashboard#index'

  namespace :backoffice do
    resources :send_mail, only: [:edit, :create]
    resources :categories, except: [:show, :destroy]
    resources :admins, except: [:show]
    resources :diagrams, only: [:index]
    get 'dashboard' => 'dashboard#index'
  end

# Pular a parte de registro dos admins, será feito manualmente dentro do admin/backoffice
  devise_for :admins, :skip => [:registrations]
  # redirecionando a rota dos membros, após o login
  devise_for :members, controllers: { 
    sessions: 'members/sessions',
    registrations: 'members/registrations' 
  }


  root 'site/home#index'
end
