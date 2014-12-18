class CreateTipoVagas < ActiveRecord::Migration
  def change
    create_table :tipo_vagas do |t|
      t.string :nome, limit: 50

      t.timestamps
    end
  end
end
