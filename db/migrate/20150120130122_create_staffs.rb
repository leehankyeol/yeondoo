class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :photo
      t.string :facebook_id

      t.timestamps
    end
  end
end