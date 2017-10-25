class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :title
      t.string :description
      t.string :slug
      t.decimal :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
