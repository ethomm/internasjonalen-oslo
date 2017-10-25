class CreateOmosses < ActiveRecord::Migration[5.1]
  def change
    create_table :omosses do |t|
      t.string :title
      t.text :ingress
      t.text :body

      t.timestamps
    end
  end
end
