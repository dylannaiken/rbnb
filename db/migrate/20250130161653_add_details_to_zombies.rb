class AddDetailsToZombies < ActiveRecord::Migration[7.1]
  def change
    add_column :zombies, :address, :string
    add_column :zombies, :latitude, :float
    add_column :zombies, :longitude, :float
  end
end
