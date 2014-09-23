class AddCargaHorariaToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :periodo_trabalho, :integer
    add_column :vagas, :carga_horaria, :integer
  end
end
