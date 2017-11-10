class AddIndexToGlobalsetting < ActiveRecord::Migration[5.1]
  def change
  	add_index :globalsettings, :singleton_guard, :unique => true
  end
end
