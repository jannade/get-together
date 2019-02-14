class AddPriceAndCategoryToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :price, :integer
    add_column :spaces, :category, :string
  end
end

