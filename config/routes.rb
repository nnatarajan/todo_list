Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  # get 'todos/index'

  # get 'todos/new'

  # get 'todos/show'

  # get 'todos/edit'
  root 'application#hello'
  resources :todos
end