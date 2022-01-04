class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :sur_name
      t.belongs_to :role, foreign_key: true
      t.string :login
      t.text :password

      t.timestamps
    end
  end
end
