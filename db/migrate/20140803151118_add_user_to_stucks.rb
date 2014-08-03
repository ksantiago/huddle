class AddUserToStucks < ActiveRecord::Migration
  def change
    add_column :stucks, :user_id, :integer
  end
end
