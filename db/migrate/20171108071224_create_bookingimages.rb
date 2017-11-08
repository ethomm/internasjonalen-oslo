class CreateBookingimages < ActiveRecord::Migration[5.1]
  def change
    create_table :bookingimages do |t|
      t.string :image
      t.string :description
      t.string :fotograf
      t.references :bookings, foreign_key: true

      t.timestamps
    end
  end
end
