class AddRespEntrevistaToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :resp_entrevista, :boolean
  end
end
