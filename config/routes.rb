Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
			  sessions: 'users/sessions',
			  passwords: 'users/passwords',
		      registrations: 'users/registrations',
			  confirmations: 'users/confirmations'}
  resources :users,only: [:show,:edit,:update,:confirm] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#top'
get 'search', to: 'movies#search'
resources :movies,only: [:show,:edit,:index,:new,:update,:create,] do
resources :favorites, only: [:create, :destroy]
resources :movie_comments, only: [:create, :destroy]
end
end
