class AddCargaHorariaToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :periodo_trabalho, :integer
    add_column :vagas, :carga_horaria, :integer
    add_column :vagas, :numero_vagas, :integer, default: 1
  end
end
