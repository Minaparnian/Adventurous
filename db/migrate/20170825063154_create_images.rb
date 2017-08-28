class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do  |t|
      t.text :name
      t.text :history
      t.text :location
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
