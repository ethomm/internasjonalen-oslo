class CreateTekniskitems < ActiveRecord::Migration[5.1]
  def change
    create_table :tekniskitems do |t|
      t.string :title
      t.integer :antall
      t.references :tekniskcategory, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
