class RemoveBootsyTables < ActiveRecord::Migration[5.1]
  def change
  	drop_table(:bootsy_image_galleries, if_exists: true)
  	drop_table(:bootsy_images , if_exists: true)
  end
end
