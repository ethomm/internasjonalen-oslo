class Shcange < ActiveRecord::Migration[5.1]
  def change
  	change_column :globalsettings, :contact_id, :integer , :default => 0
  end
end
