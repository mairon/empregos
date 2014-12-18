class AddDiposInicioToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :disponibilidade_inicio, :integer
    add_column :candidatos, :pretencao_salario, :decimal, :scale => 2, :precision => 15, :default => 0
  end
end
