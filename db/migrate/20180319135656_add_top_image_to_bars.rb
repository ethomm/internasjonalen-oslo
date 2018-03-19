class AddTopImageToBars < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :top_image, :text
  end
end
