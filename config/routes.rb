Rails.application.routes.draw do
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  get 'users/index'
  get 'books/new'
  get 'books/show'
  get 'books/edit'
  get 'books/index'
  get 'homes/top'
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
