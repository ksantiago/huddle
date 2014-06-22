class CreateSuccesses < ActiveRecord::Migration
  def change
    create_table :successes do |t|
      t.text :description

      t.timestamps
    end
  end
end
