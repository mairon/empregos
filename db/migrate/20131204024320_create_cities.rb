class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, :limit => '50'
      t.integer :state_id
      t.integer :dimob
      t.integer :plots_iptu
      t.decimal :discount_quote, :scale => 2,:precision => 15, :default => 0
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
