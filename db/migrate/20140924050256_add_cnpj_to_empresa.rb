class AddCnpjToEmpresa < ActiveRecord::Migration
  def change
  	remove_column :empresas, :cnpj
    add_column :empresas, :cnpj, :string, limit: 20
  end
end
