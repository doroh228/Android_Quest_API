class Game < ApplicationRecord
  belongs_to :user
  belongs_to :game_status
  has_and_belongs_to_many :users
  has_and_belongs_to_many :questions

end
