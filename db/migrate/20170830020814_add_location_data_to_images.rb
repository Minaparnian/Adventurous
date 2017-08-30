class AddLocationDataToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :longitude, :float
    add_column :images, :latitude, :float
  end
end
