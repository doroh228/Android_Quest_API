class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :game_status, foreign_key: true

      t.timestamps
    end
  end
end
