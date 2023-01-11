class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :checkout
      t.datetime :checkin
      t.integer :people

      t.timestamps
    end
  end
end
