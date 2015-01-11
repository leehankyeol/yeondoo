class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.integer :price
      t.string :option
      t.string :option_price

      t.timestamps
    end
  end
end
