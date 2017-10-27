Rails.application.routes.draw do
  root 'home#splash'

  get 'home/index'
  get 'math/report'
  post 'math/report'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/math' => 'math#start'
  post '/math/select' => 'math#select'
  get '/math/solve' => 'math#solve'
  post '/math/solve' => 'math#solve'
  post '/math/grade' => 'math#grade'

  get 'math/explain'
end
