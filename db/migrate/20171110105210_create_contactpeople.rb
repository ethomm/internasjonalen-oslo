class CreateContactpeople < ActiveRecord::Migration[5.1]
  def change
    create_table :contactpeople do |t|
      t.string :name
      t.string :email
      t.string :telefon
      t.string :position
      t.boolean :showtelefon

      t.timestamps
    end
  end
end
