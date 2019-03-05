Rails.application.routes.draw do
  defaults format: :json do
    resources :tackle_box_itemss, only: [:index, :create],
              path: 'tackle-box-items'
    resources :baits, only: [:index] do
      resources :catches, only: [:index, :create]
    end
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
  end
end
