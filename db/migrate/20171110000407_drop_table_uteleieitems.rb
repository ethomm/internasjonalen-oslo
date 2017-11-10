class DropTableUteleieitems < ActiveRecord::Migration[5.1]
  def change
  	drop_table(:utleieitems , if_exists: true)
  	drop_table(:utleietypes , if_exists: true)
  	
  end
end
