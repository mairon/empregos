class CreateCandidatoFormacaos < ActiveRecord::Migration
  def change
    create_table :candidato_formacaos do |t|
      t.integer :candidato_id
      t.integer :formacao_id
      t.integer :curso_id
      t.integer :status
      t.integer :inicio_mes
      t.integer :inicio_ano
      t.integer :final_mes
      t.integer :final_ano
      t.string :instituicao
      t.integer :pais_id
      t.integer :estado_id

      t.timestamps
    end
  end
end
