class CreateAdminRamos < ActiveRecord::Migration
  def change
    create_table :ramos do |t|
      t.string :nome, limit: 100
      t.boolean :status
      t.string :codigo, limit: 10

      t.timestamps
    end
  end
end
