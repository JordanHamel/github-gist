GistProject::Application.routes.draw do

  root :to => 'sessions#new'

  resource :session, only: [:new, :create]
  resources :gists do
    resource :favorite, only: [:create, :destroy]
    resources :gist_files
  end
  resources :favorites, only: [:index]


# resources :gists

end