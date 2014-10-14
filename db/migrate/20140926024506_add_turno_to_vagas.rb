class AddTurnoToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :turno_manha, :smallint
    add_column :vagas, :turno_tarde, :smallint
    add_column :vagas, :turno_noite, :smallint
    add_column :vagas, :turno_especifico_inicio, :time
    add_column :vagas, :turno_espeficico_final, :time
  end
end
