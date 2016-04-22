class AddFkToLineItem < ActiveRecord::Migration
  def change
  	add_foreign_key :products, :line_items
  end
end
