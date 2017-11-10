class ChangeDatatypeForDescriptionInDrinks < ActiveRecord::Migration[5.1]
  def change
  	change_column :drinks, :description, :text
  end
end
