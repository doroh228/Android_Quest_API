Rails.application.routes.draw do
  root 'welcome#index'

  get '/users', to: 'user#index'
  get '/admins', to: 'user#get_admin'

  post '/users', to: 'user#create'
  delete '/users/:id', to: 'user#destroy'
  options '/users/:id', to: 'user#option_r'

  post '/questions', to: 'question#create'

end
