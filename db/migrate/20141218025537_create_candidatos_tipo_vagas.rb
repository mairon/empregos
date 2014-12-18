class CreateCandidatosTipoVagas < ActiveRecord::Migration
  def change
    create_table :candidatos_tipo_vagas do |t|
      t.integer :candidato_id
      t.integer :tipo_vaga_id

      t.timestamps
    end
  end
end
