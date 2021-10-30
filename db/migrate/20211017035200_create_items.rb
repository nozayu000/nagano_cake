class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
     
      t.integer :genre_id
      t.string :name
      t.string :image_id
      t.text :introduction
      t.integer :price_without_tax
      t.boolean :is_active, null: false, default: true
      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }

      t.timestamps
    end
  end
end
