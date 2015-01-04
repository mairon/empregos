class CreateCandidatoExperienciasCargos < ActiveRecord::Migration
  def change
    create_table :candidato_experiencias_cargos do |t|
      t.integer :cargo_id
      t.integer :candidato_experiencia_id
      t.integer :candidato_id

      t.timestamps null: false
    end
  end
end
