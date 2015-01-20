class TranslateStaffs < ActiveRecord::Migration
  def self.up
  	Staff.create_translation_table!({
      :name => :string,
      :description => :text
  	}, {
  	  :migrate_data => true
  	})
  end

  def self.down
    Staff.drop_translation_table! :migrate_data => true
  end
end