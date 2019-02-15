Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :new, :show, :create ] do
    resources :doses, only: [ :index, :new, :create]
  end
  get "/", to:"cocktails#index"

  resources :doses, only: :destroy
end
