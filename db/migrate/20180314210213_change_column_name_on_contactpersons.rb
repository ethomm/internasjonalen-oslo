class ChangeColumnNameOnContactpersons < ActiveRecord::Migration[5.1]
  def change
    rename_column :contactpeople, :role, :stilling
  end
end
