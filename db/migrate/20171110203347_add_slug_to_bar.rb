class AddSlugToBar < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :slug, :string
  end
end
