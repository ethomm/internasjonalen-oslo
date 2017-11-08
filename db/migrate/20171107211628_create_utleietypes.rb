class CreateUtleietypes < ActiveRecord::Migration[5.1]
  def change
    create_table :utleietypes do |t|
      t.string :title

      t.timestamps
    end
  end
end
