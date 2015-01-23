class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :summary
      t.string :content
      t.string :thumbnail
      t.timestamps null: false
    end
  end
end