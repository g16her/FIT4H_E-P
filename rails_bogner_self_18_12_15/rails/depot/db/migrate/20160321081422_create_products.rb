class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :title
      t.decimal :price
      t.string :image_url

      t.timestamps null: false
    end
  end
end
