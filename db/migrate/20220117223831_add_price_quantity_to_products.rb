class AddPriceQuantityToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :price, :float
    add_column :products, :quantity, :integer
  end
end
