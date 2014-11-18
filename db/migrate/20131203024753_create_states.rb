class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :acronym, :limit => 2
      t.string :name, :limit => 50
      t.time :deleted_at
      t.integer :user_created, :default => 0
      t.integer :unit_created, :default => 0
      t.integer :user_updated, :default => 0
      t.integer :unit_updated, :default => 0
      t.integer :user_deleted, :default => 0
      t.integer :unit_deleted, :default => 0

      t.timestamps
    end
  end
end
