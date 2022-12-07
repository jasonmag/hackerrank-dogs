Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :dogs
    post 'likes/dog/:dog_id', to: 'dogs#likes', as: 'like'
  root to: "dogs#index"
end
