class AddPertoDaEmpresaToVagas < ActiveRecord::Migration
  def change
    add_column :vagas, :mora_perto_empresa, :boolean
  end
end
