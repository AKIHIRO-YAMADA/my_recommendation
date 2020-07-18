Rails.application.routes.draw do
  get 'search/search'
  get 'relationships/follow'
  get 'relationships/followed'
  get 'users/show'
  get 'users/edit'
  get 'users/confirm'
  get 'movies/index'
  get 'movies/show'
  get 'movies/edit'
  get 'movies/new'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#top'
end
