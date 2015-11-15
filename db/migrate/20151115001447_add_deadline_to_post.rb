class AddDeadlineToPost < ActiveRecord::Migration
  def change
    add_column :posts, :deadline, :datetime
  end
end
