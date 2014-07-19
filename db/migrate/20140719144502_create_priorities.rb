class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :priorities do |t|
      t.text :description

      t.timestamps
    end
  end
end
