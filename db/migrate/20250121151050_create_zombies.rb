class CreateZombies < ActiveRecord::Migration[7.1]
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :race
      t.string :height
      t.string :skill
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
