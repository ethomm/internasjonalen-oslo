class CreateGlobalsettings < ActiveRecord::Migration[5.1]
  def change
    create_table :globalsettings do |t|
      t.boolean :mandag
      t.boolean :tirsdag
      t.boolean :onsdag
      t.boolean :torsdag
      t.boolean :fredag
      t.boolean :lørdag
      t.boolean :søndag
      t.integer :mandaghour
      t.integer :mandagminute
      t.integer :tirsdaghour
      t.integer :tirsdagminute
      t.integer :onsdaghour
      t.integer :onsdagminute
      t.integer :torsdaghour
      t.integer :torsdagminute
      t.integer :fredaghour
      t.integer :fredagminute
      t.integer :lørdaghour
      t.integer :lørdagminute
      t.integer :søndaghour
      t.integer :søndagminute
      t.integer :aldersgrense
      t.string :adresse
      t.string :postnr
      t.string :poststed
      t.string :epost
      t.string :telefonnr
      t.integer :singleton_guard

      t.timestamps
    end
  end
end
