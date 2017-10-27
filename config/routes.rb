Rails.application.routes.draw do
  root 'home#splash'

  get 'home/index'
  get 'math/report'
  post 'math/report'

  get 'math/report2'
  post 'math/report2'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/math' => 'math#start'
  get '/math/select' => 'math#select'
  post '/math/select' => 'math#select'
  get '/math/solve' => 'math#solve'
  post '/math/solve' => 'math#solve'
  # solve2
  get '/math/solve2' => 'math#solve2'
  post '/math/solve2' => 'math#solve2'
  post '/math/grade' => 'math#grade'

  get 'math/explain'
end
