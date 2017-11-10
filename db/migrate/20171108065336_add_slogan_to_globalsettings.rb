class AddSloganToGlobalsettings < ActiveRecord::Migration[5.1]
  def change
    add_column :globalsettings, :slogan, :string
  end
end
