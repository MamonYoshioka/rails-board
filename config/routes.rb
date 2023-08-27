Rails.application.routes.draw do
  resources :boards, only: [:index, :new, :create ,:show, :edit, :update]
end
