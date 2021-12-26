class WelcomeController < ApplicationController
  def index
    render json: [{name: 'Sergo', age: 12}, {name: 'Vova', age: 15}], status: :ok
  end
end
