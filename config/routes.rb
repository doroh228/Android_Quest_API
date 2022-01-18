Rails.application.routes.draw do
  root 'welcome#index'
  #USERS
  get '/users', to: 'user#index'
  get '/admins', to: 'user#get_admin'

  post '/users', to: 'user#create'
  delete '/users/:id', to: 'user#destroy'
  options '/users/:id', to: 'user#option_r'

  #ROLE
  get '/roles', to: 'role#index'
  post '/roles', to: 'role#create'


  #QUESTIONS
  post '/questions', to: 'question#create'

end
