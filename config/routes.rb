Rails.application.routes.draw do
  root 'home#splash'

  get 'home/index'
  get 'math/report'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
