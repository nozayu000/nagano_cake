class RenameIsAcColumnToItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :is_ac, :is_active
  end
end
