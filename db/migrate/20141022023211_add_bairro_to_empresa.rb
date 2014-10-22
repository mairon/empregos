class AddBairroToEmpresa < ActiveRecord::Migration
  def change
    add_column :empresas, :bairro, :string, limit: 100
    add_column :empresas, :entrev_bairro, :string, limit: 100
  end
end
