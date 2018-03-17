class AddStatusToFrontpageImages < ActiveRecord::Migration[5.1]
  def change
    add_column :frontpage_images, :status, :integer
  end
end
