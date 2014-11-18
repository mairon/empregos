class AddsobreToEmpresaPerfil < ActiveRecord::Migration
  def change
    remove_column :empresa_perfils, :trab_sabado
    remove_column :empresa_perfils, :trab_domingo_feriados

    add_column :empresa_perfils, :sobre, :text

  end
end
