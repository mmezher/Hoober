class AddSeatsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :seats, :integer
  end
end
