class RemoveTableDrinks < ActiveRecord::Migration[5.1]
  def change
  	drop_table :drinks
  	drop_table :categories
  end
end
