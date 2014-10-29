class AddSalarioToVagas < ActiveRecord::Migration
  def change
  	add_column :vagas, :mostrar_salario, :boolean
    add_column :vagas, :salario_inicial, :decimal, :scale => 2, :precision => 15, :default => 0
    add_column :vagas, :salario_pos_exp, :decimal, :scale => 2, :precision => 15, :default => 0
    add_column :vagas, :salario_por_hms, :integer
    add_column :vagas, :salario_comissao, :boolean
    add_column :vagas, :salario_comissao_porcen, :decimal, :scale => 2, :precision => 15, :default => 0
    add_column :vagas, :salario_bonif, :boolean
    add_column :vagas, :salario_premiacao, :boolean

  end
end
