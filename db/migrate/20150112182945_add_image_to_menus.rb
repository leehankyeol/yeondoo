class AddImageToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :image, :string, :null => true
  end
end
