class TranslateMenus < ActiveRecord::Migration
	def self.up
    Menu.create_translation_table!({
      :name => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Menu.drop_translation_table! :migrate_data => true
  end
end