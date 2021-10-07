Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root "hello#index"

  get 'courses/new'
  post 'courses', to: 'courses#create'
  get 'courses/index'
  get 'courses/show'

  get "users/:id", to: "users#show", as: "users_show"


  get 'courses/edit'
  patch 'courses/update', to: 'courses#update', as: 'courses_update'
  delete 'courses/delete', to: 'courses#delete', as: 'courses_delete'
  
  get 'class_videos/new'
  post 'class_videos', to: 'class_videos#create'
  get 'class_videos/index'
  get 'class_videos/show'
  
  get 'class_videos/edit'
  patch 'class_videos/update', to: 'class_videos#update', as: 'class_videos_update'
  delete 'class_videos/delete', to: 'class_videos#delete', as: 'class_videos_delete'





=======
  root "hello#index"
>>>>>>> main
  
  get "/hello", to: "hello#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
