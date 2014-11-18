class CreateDiasSemanas < ActiveRecord::Migration
  def change
    create_table :dias_semanas do |t|
      t.string :nome, limit: 30

      t.timestamps
    end
  end
end
