class CreateUtleies < ActiveRecord::Migration[5.1]
  def change
    create_table :utleies do |t|
      t.text :ingress
      t.string :booking_email
      t.string :contactperson
      t.string :contact_email
      t.string :contact_position
      t.string :contact_number
      t.boolean :show_contact_number

      t.timestamps
    end
  end
end
