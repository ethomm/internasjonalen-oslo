class CreateBarimages < ActiveRecord::Migration[5.1]
  def change
    create_table :barimages do |t|
      t.references :bar, foreign_key: true
      t.text :image_url
      t.string :fotograf
      t.text :description

      t.timestamps
    end
  end
end
