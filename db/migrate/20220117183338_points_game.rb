class PointsGame <ActiveRecord::Migration[7.0]
  def change
    create_table :point do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
