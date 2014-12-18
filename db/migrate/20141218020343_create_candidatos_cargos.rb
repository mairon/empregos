class CreateCandidatosCargos < ActiveRecord::Migration
  def change
    create_table :candidatos_cargos do |t|
      t.integer :candidato_id
      t.integer :cargo_id

      t.timestamps
    end
  end
end
