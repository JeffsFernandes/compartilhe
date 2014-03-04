Compartilhe::Application.routes.draw do
  get "skills" => "skills#index"
  devise_for :users
  resources :users
  root 'application#index'
  post 'skills/save'
end
