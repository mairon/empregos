class AddPretencaoSalarioToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :pretencao_salario_min, :decimal, :scale => 2,:precision => 15, :default => 0
    add_column :candidatos, :pretencao_salario_max, :decimal, :scale => 2,:precision => 15, :default => 0
  end
end
