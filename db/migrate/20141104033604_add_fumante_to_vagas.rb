class AddFumanteToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :nao_fumante, :boolean
    add_column :vagas, :candidatos_regiao, :boolean
  end
end
