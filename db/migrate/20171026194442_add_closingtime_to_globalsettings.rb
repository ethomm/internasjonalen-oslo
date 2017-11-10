class AddClosingtimeToGlobalsettings < ActiveRecord::Migration[5.1]
  def change
    add_column :globalsettings, :mandagclosinghour, :integer
    add_column :globalsettings, :mandagclosingminute, :integer
    add_column :globalsettings, :tirsdagclosinghour, :integer
    add_column :globalsettings, :tirsdagclosingminute, :integer
    add_column :globalsettings, :onsdagclosinghour, :integer
    add_column :globalsettings, :onsdagclosingminute, :integer
    add_column :globalsettings, :torsdagclosinghour, :integer
    add_column :globalsettings, :torsdagclosingminute, :integer
    add_column :globalsettings, :fredagclosinghour, :integer
    add_column :globalsettings, :fredagclosingminute, :integer
    add_column :globalsettings, :lørdagclosinghour, :integer
    add_column :globalsettings, :lørdagclosingminute, :integer
    add_column :globalsettings, :søndagclosinghour, :integer
    add_column :globalsettings, :søndagclosingminute, :integer

  end
end
