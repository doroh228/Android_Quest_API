class CreatePlayersInGames < ActiveRecord::Migration[7.0]
  def change
    create_table :players_in_games do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
