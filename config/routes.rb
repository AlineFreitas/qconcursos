Rails.application.routes.draw do
  resources :questions do
    resources :options, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :subject_matters
  resources :disciplines

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
