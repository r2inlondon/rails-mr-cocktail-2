Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create new destroy]
  end
  root to: 'cocktails#index'
end
