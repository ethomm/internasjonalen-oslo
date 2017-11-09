class AddSeodescriptionToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :seodescription, :text
  end
end
