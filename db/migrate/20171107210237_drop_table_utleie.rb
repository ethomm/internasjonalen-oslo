class DropTableUtleie < ActiveRecord::Migration[5.1]
  def change
  	drop_table(:utleies , if_exists: true)
  end
end
