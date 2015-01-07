class CreateCandidatosTurnos < ActiveRecord::Migration
  def change
    create_table :candidatos_turnos do |t|
      t.integer :candidato_id
      t.integer :turno_id

      t.timestamps null: false
    end
  end
end
