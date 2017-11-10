class RemoveForgeinkeyOnGlobalsettings < ActiveRecord::Migration[5.1]
  def change
  	remove_foreign_key :globalsettings, :contactperson
  end
end
