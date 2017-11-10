class AddContactIdToGlobalsettings < ActiveRecord::Migration[5.1]
  def change
    add_column :globalsettings, :contact_id, :integer , :default => 0
  end
end
