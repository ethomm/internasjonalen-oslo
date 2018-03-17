class CreateFrontpageImages < ActiveRecord::Migration[5.1]
  def change
    create_table :frontpage_images do |t|
      t.text :image_url
      t.string :fotograf

      t.timestamps
    end
  end
end
