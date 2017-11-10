class AddBookinIdAndTeknikalIdToGlobalsettings < ActiveRecord::Migration[5.1]
  def change
    add_column :globalsettings, :booking_id, :integer, :default => 0
    add_column :globalsettings, :teknisk_id, :integer, :default => 0
  end
end
