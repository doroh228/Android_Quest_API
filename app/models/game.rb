class Game < ApplicationRecord
  belongs_to :user
  belongs_to :game_status

end
