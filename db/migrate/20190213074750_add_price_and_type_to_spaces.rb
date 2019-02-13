class AddPriceAndTypeToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :price, :integer
    add_column :spaces, :type, :string
  end
end
