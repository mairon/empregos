class CreateCandidatosDiasSemanas < ActiveRecord::Migration
  def change
    create_table :candidatos_dias_semanas do |t|
      t.integer :candidato_id
      t.integer :dias_semana_id

      t.timestamps
    end
  end
end
