Rails.application.routes.draw do
  root 'welcome#index'

  get '/users', to: 'user#get_users'
  get '/admins', to: 'user#get_admin'

  post '/users', to: 'user#create'


  post '/questions', to: 'question#create'

end
