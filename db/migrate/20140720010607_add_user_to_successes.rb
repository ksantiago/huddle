class AddUserToSuccesses < ActiveRecord::Migration
  def change
    add_column :successes, :user_id, :integer
  end
end
