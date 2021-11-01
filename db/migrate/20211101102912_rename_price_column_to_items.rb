class RenamePriceColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :price, :price_without_tax
  end
  
end
