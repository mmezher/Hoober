class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :image_id
      t.string :place

      t.timestamps null: false
    end
  end
end
