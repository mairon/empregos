class CreateDiasSemanasVagas < ActiveRecord::Migration
  def change
    create_table :dias_semanas_vagas do |t|
      t.integer :vaga_id
      t.string :nome

      t.timestamps
    end
  end
end
