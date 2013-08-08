Router::Application.routes.draw do
  resources :users do
    resources :contacts, :only => [:index]

    resources :favorites, :only => [:index]
  end

  resources :contacts, :except => [:index, :new]

  resources :favorites, :except => [:edit, :update, :index, :new]

  resource :session, :only => [:create, :destroy]


end
