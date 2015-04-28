class AddFilhosToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :filhos_maores, :integer
    add_column :vagas, :filhos_mes_anos, :integer
  end
end
