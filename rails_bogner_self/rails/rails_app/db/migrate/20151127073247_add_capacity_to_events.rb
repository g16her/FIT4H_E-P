class AddCapacityToEvents < ActiveRecord::Migration
  def change
    add_column :events, :image, :string
    add_column :events, :file, :string
    add_column :events, :capacity, :integer
  end
end
