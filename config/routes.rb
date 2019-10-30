Rails.application.routes.draw do

  get 'welcome/index'

  root 'welcome#index'

  devise_for :users

  resources :parts do
    collection do
      get 'search'
    end
  end
  resources :cars do
    collection do
      get 'search'
    end
  end
  resources :makes do
  collection do
    get 'search'
  end
end
  resources :countries do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
