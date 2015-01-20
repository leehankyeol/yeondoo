class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :category
      t.string :subcategory
      t.string :tag
      t.string :default
      t.integer :price
      t.string :option
      t.integer :option_price

      t.timestamps
    end
  end
end