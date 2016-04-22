class AddFkToFromCartToLineItem < ActiveRecord::Migration
  def change
  	add_foreign_key :carts, :line_items
  end
end
