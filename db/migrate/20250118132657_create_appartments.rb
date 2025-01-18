class CreateAppartments < ActiveRecord::Migration[7.1]
  def change
    create_table :appartments do |t|
      t.string :title
      t.string :price
      t.text :image
      t.text :description

      t.timestamps
    end
  end
end
