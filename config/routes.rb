Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :influencer_reports, only: [:create] do
    resources :photos, only: [:create]
  end
end
