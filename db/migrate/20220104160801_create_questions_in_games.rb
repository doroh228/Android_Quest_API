class CreateQuestionsInGames < ActiveRecord::Migration[7.0]
  def change
    create_table :questions_in_games do |t|
      t.belongs_to :question, foreign_key: true
      t.belongs_to :game, foreign_key: true

      t.timestamps
    end
  end
end
