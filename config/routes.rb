Rails.application.routes.draw do
  resources :items, only: [:index, :destroy, :create, :update]

end
