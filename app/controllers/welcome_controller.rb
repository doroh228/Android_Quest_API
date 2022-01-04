class WelcomeController < ApplicationController
  def index
    render json: [{name: 'Sergo228', age: 12}, {name: 'Vova228', age: 15}], status: :ok
  end
end
