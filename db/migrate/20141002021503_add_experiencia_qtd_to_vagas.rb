class AddExperienciaQtdToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :experiencia_qtd, :integer
    add_column :vagas, :experiencia_mes_ano, :integer
  end
end
