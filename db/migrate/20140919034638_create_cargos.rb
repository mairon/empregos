class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :nome
      t.boolean :status, defautl: true

      t.timestamps
    end
  end
end
