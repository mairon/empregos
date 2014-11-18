class CreateEmpresaPerfils < ActiveRecord::Migration
  def change
    create_table :empresa_perfils do |t|
      t.integer :empresa_id
      t.boolean :trab_sabado
      t.boolean :trab_domingo_feriados
      t.boolean :trans_vale_transporte
      t.boolean :trans_ajuda
      t.boolean :trans_combinar
      t.boolean :ali_vale_refeicao
      t.boolean :ali_refeitorio_proprio
      t.boolean :ali_ajuda
      t.boolean :ali_combinar
      t.decimal :trans_vale_valor, :scale => 2, :precision => 15, :default => 0
      t.decimal :trans_ajuda_valor, :scale => 2, :precision => 15, :default => 0
      t.decimal :ali_vale_valor, :scale => 2, :precision => 15, :default => 0
      t.decimal :ali_ajuda_valor, :scale => 2, :precision => 15, :default => 0

      t.timestamps
    end
  end
end
