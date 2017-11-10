class ChangeColumntypeType < ActiveRecord::Migration[5.1]
  def change
  	rename_column :bookings, :type, :title
  end
end
