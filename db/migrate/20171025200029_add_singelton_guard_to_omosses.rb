class AddSingeltonGuardToOmosses < ActiveRecord::Migration[5.1]
  def change
    add_column :omosses, :singleton_guard, :integer
    add_index :omosses, :singleton_guard, :unique => true
  end
end
