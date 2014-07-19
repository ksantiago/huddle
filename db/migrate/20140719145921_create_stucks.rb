class CreateStucks < ActiveRecord::Migration
  def change
    create_table :stucks do |t|
      t.text :description

      t.timestamps
    end
  end
end
