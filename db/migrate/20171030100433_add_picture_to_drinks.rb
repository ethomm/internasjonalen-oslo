class AddPictureToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :picture, :string
  end
end
