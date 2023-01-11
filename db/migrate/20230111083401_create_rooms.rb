class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :image_name
      t.text :intro
      t.integer :price
      t.string :area

      t.timestamps
    end
  end
end
