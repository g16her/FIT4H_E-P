class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title #,default "hans" Wert hans
      t.text :description
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
