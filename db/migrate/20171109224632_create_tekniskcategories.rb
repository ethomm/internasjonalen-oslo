class CreateTekniskcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :tekniskcategories do |t|
      t.string :title

      t.timestamps
    end
  end
end
