class CreateUtleieitems < ActiveRecord::Migration[5.1]
  def change
    create_table :utleieitems do |t|
      t.integer :antall
      t.string :brand
      t.string :title
      t.references :utleietypes, foreign_key: true

      t.timestamps
    end
  end
end
