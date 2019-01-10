Rails.application.routes.draw do
  get 'pages/index'
  resources :todo_lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home' => 'todo_lists#home'
  get 'test' => 'pages#index'
   
end
