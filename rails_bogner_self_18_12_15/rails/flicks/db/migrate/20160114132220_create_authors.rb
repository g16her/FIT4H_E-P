class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nachname
      t.text :beschreibung
      t.integer :anzahl

      t.timestamps null: false
    end
  end
end
