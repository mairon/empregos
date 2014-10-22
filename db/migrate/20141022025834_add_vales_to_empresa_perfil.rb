class AddValesToEmpresaPerfil < ActiveRecord::Migration
  def change

    remove_column :empresa_perfils, :trans_vale_transporte
    remove_column :empresa_perfils, :trans_vale_valor
    remove_column :empresa_perfils, :trans_combinar
    remove_column :empresa_perfils, :trans_ajuda
    remove_column :empresa_perfils, :trans_ajuda_valor
    remove_column :empresa_perfils, :ali_vale_refeicao
    remove_column :empresa_perfils, :ali_vale_valor
    remove_column :empresa_perfils, :ali_refeitorio_proprio
    remove_column :empresa_perfils, :ali_ajuda
    remove_column :empresa_perfils, :ali_ajuda_valor
    remove_column :empresa_perfils, :ali_combinar

    add_column :empresa_perfils, :vale_transporte, :integer
    add_column :empresa_perfils, :vale_transporte_valor, :decimal, :scale => 2, :precision => 15, :default => 0

    add_column :empresa_perfils, :vale_alimentacao, :integer
    add_column :empresa_perfils, :vale_alimentacao_valor, :decimal, :scale => 2, :precision => 15, :default => 0
  end
end
