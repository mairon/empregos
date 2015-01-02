class AddTurnoIdToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :turno_id, :integer
    add_column :vagas, :tipo_vaga_id, :integer
  end
end
