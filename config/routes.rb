Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end

  patch '/admin/preferences/change', to: 'admin/preferences#change'

end
