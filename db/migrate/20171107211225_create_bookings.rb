class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :type
      t.text :body
      t.string :slug

      t.timestamps
    end
  end
end
