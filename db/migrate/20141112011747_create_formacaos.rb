class CreateFormacaos < ActiveRecord::Migration
  def change
    create_table :formacaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
